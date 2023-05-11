// ignore_for_file: avoid_print

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:waste_to_go/application/models/product_create_model.dart';
import 'package:waste_to_go/presentation/blocs/product_bloc.dart';
import 'package:waste_to_go/presentation/widgets/custom_add_dropdown.dart';
import 'package:waste_to_go/presentation/widgets/custom_btn_loading.dart';

import '../blocs/location_bloc.dart';
import '../blocs/page_and_kategory_cubit.dart';
import '../routes/app_routes.dart';
import '../utils/constants.dart';
import '../utils/image_picker.dart';
import '../widgets/custom_button.dart';
import '../widgets/custom_date_picker.dart';
import '../widgets/custom_outline_text_field.dart';

class AddFoodPage extends StatefulWidget {
  const AddFoodPage({super.key});

  @override
  State<AddFoodPage> createState() => _AddFoodPageState();
}

class _AddFoodPageState extends State<AddFoodPage> {
  TextEditingController nameController = TextEditingController(text: '');
  TextEditingController descController = TextEditingController(text: '');
  TextEditingController dateController = TextEditingController(text: '');
  TextEditingController priceController = TextEditingController(text: '');
  String dropdownValue = expired.first;

  final ImageUpload imageUpload = ImageUpload();

  @override
  void dispose() {
    imageUpload.dispose();
    nameController.dispose();
    dateController.dispose();
    descController.dispose();
    priceController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final double barHeight = MediaQuery.of(context).padding.top;

    Widget buildBackGround() => Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(30)),
            gradient: LinearGradient(
              colors: [
                kSeconderyLiner1,
                kSeconderyLiner2,
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          height: height * 0.09 + barHeight,
        );

    PreferredSizeWidget buildAppBar() => AppBar(
          elevation: 0,
          centerTitle: true,
          toolbarHeight: height * 0.1,
          backgroundColor: Colors.transparent,
          title: Text(
            "Add Food",
            style: kHeading6.copyWith(fontWeight: FontWeight.bold),
          ),
          leading: const SizedBox(),
        );

    Widget imagePrev() => Container(
          height: height * 0.33,
          width: double.maxFinite,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: kWhite,
            image: imageUpload.imageFile != null
                ? DecorationImage(
                    image: FileImage(File(imageUpload.imageFile!.path)),
                    fit: BoxFit.cover,
                  )
                : const DecorationImage(
                    image: AssetImage('assets/upload.png'),
                    filterQuality: FilterQuality.low,
                    scale: 2,
                  ),
          ),
          child: Stack(
            children: [
              BlocBuilder<LocationBloc, LocationState>(
                builder: (context, state) {
                  if (state is LocationSelected) {
                    return Positioned(
                      top: 0,
                      right: 0,
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 10,
                        ),
                        margin: const EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 20,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: kWhite,
                        ),
                        child: Text(
                          "Lokasi berhasi terpilih",
                          style: kSubtitle.copyWith(color: kSecondery),
                        ),
                      ),
                    );
                  }
                  return const SizedBox();
                },
              ),
              Positioned(
                bottom: 0,
                right: 0,
                child: GestureDetector(
                  onTap: () => _pickImage(ImageSource.gallery),
                  child: Container(
                    height: 55,
                    width: 60,
                    margin: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 20,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: kWhite,
                    ),
                    child: const Icon(Icons.photo),
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                right: 75,
                child: GestureDetector(
                  onTap: () {
                    router.pushNamed('location');
                  },
                  child: Container(
                    height: 55,
                    width: 60,
                    margin: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 20,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: kWhite,
                    ),
                    child: const Icon(Icons.location_on_rounded),
                  ),
                ),
              ),
            ],
          ),
        );

    Widget menuNameInput() => CustomOutlineTextField(
          controller: nameController,
          hintText: "Menu name is required",
          label: "Menu Name",
        );
    Widget descriptionInput() => CustomOutlineTextField(
          controller: descController,
          hintText: "Description is required",
          label: "Description",
        );
    Widget productionDateInput() => CustomDatePicker(
          hintText: "Production date",
          controller: dateController,
        );
    Widget priceInput() => CustomOutlineTextField(
          controller: priceController,
          hintText: "Input price if you want to sale",
          label: "Price",
        );

    Widget expiredProduct() => Padding(
        padding: const EdgeInsets.only(top: 15),
        child: CustomExpiredDropdown(
          onChanged: (value) {
            if (mounted) {
              setState(() {
                dropdownValue = value!.toString();
              });
            }
          },
          dropdownValue: dropdownValue,
        ));

    Widget buttonSubmit() => BlocConsumer<ProductBloc, ProductState>(
          listener: (context, state) {
            state.whenOrNull(
              created: () {
                context.read<LocationBloc>().add(OnClearLocation());
                context.read<PageCubit>().setPage(0);
              },
              error: (message) => hendleError(context, message),
            );
          },
          builder: (context, state) {
            return Padding(
              padding: const EdgeInsets.only(top: 20),
              child: state.maybeWhen(
                loading: () => const CustomBtnLoading(),
                created: () => CustomButton(
                  title: "Submit",
                  onPressed: () => submitData(context),
                ),
                orElse: () => CustomButton(
                  title: "Submit",
                  onPressed: () => submitData(context),
                ),
              ),
            );
          },
        );

    Widget buildButtomSizeBox() => const SizedBox(
          height: 80,
        );

    return Stack(
      children: [
        buildBackGround(),
        Scaffold(
            resizeToAvoidBottomInset: true,
            backgroundColor: Colors.transparent,
            appBar: buildAppBar(),
            body: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Padding(
                    padding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
                    child: Column(
                      children: [
                        imagePrev(),
                        menuNameInput(),
                        descriptionInput(),
                        productionDateInput(),
                        priceInput(),
                        expiredProduct(),
                        buttonSubmit(),
                        buildButtomSizeBox(),
                      ],
                    ))))
      ],
    );
  }

  void _pickImage(ImageSource source) async {
    await imageUpload.pickImage(source);
    setState(() {});
  }

  void submitData(BuildContext context) {
    final locationState = BlocProvider.of<LocationBloc>(context).state;
    double? latitude, longitude;

    if (locationState is LocationSelected) {
      latitude = locationState.latitude;
      longitude = locationState.longitude;
    }

    if (nameController.text.isEmpty) {
      const snackbar = SnackBar(
        content: Text("Nama menu tidak boleh kosong"),
      );
      ScaffoldMessenger.of(context).showSnackBar(snackbar);
    } else if (descController.text.isEmpty) {
      const snackbar = SnackBar(
        content: Text("Deskripsi tidak boleh kosong"),
      );
      ScaffoldMessenger.of(context).showSnackBar(snackbar);
    } else if (dateController.text.isEmpty) {
      const snackbar = SnackBar(
        content: Text("Tanggal produksi tidak boleh kosong"),
      );
      ScaffoldMessenger.of(context).showSnackBar(snackbar);
    } else if (priceController.text.isEmpty) {
      const snackbar = SnackBar(
        content: Text("Jika menjual gratis buat harga '0'"),
      );
      ScaffoldMessenger.of(context).showSnackBar(snackbar);
    } else if (longitude == null && latitude == null) {
      const snackbar = SnackBar(
        content: Text("Pilih lokasi dulu yaa"),
      );
      ScaffoldMessenger.of(context).showSnackBar(snackbar);
    } else if (imageUpload.imageFile == null) {
      const snackbar = SnackBar(
        content: Text("Gambar tidak boleh kosong"),
      );
      ScaffoldMessenger.of(context).showSnackBar(snackbar);
    } else {
      CreateProductModel product = CreateProductModel(
        name: nameController.text,
        desc: descController.text,
        date: dateController.text,
        price: double.tryParse(priceController.text),
        image: imageUpload.imageFile!,
        lat: latitude,
        long: longitude,
        expired: dropdownValue,
      );

      context.read<ProductBloc>().add(ProductEvent.createProduct(product));
    }
  }

  void hendleError(BuildContext context, message) {
    final snackbar = SnackBar(content: Text(message));
    ScaffoldMessenger.of(context).showSnackBar(snackbar);
  }
}
