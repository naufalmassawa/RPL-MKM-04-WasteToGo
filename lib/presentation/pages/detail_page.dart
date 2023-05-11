import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:intl/intl.dart';
import 'package:ndialog/ndialog.dart';
import 'package:waste_to_go/application/models/product_model.dart';
import 'package:waste_to_go/presentation/widgets/custom_button.dart';

import '../blocs/product_bloc.dart';
import '../routes/app_routes.dart';
import '../utils/constants.dart';
import 'package:geocoding/geocoding.dart' as geo;

import '../widgets/custom_skeleton.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key, required this.id});
  final String id;
  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  final Set<Marker> markers = {};
  late GoogleMapController mapController;
  geo.Placemark? placemark;

  void defineMarker(LatLng latLng, String street, String address) {
    final marker = Marker(
      markerId: const MarkerId("source"),
      position: latLng,
      infoWindow: InfoWindow(
        title: street,
        snippet: address,
      ),
    );

    if (mounted) {
      setState(() {
        markers.clear();
        markers.add(marker);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final ProductModel product =
        ModalRoute.of(context)!.settings.arguments as ProductModel;

    Widget buildMap({lat, long}) {
      final selectedLocation = LatLng(
        lat!.toDouble(),
        long!.toDouble(),
      );
      return Padding(
        padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
        child: SizedBox(
          height: height * 0.35,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: GoogleMap(
              initialCameraPosition: CameraPosition(
                zoom: 18,
                target: selectedLocation,
              ),
              markers: markers,
              onMapCreated: (controller) async {
                final info = await geo.placemarkFromCoordinates(
                  lat!.toDouble(),
                  long!.toDouble(),
                );

                final place = info[0];
                final street = place.street!;
                final address =
                    '${place.subLocality}, ${place.locality}, ${place.postalCode}, ${place.country}';

                if (mounted) {
                  setState(() {
                    placemark = place;
                  });
                }

                defineMarker(selectedLocation, street, address);
              },
            ),
          ),
        ),
      );
    }

    Widget buildAddress() => Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 15,
            vertical: 10,
          ),
          child: Container(
            width: double.maxFinite,
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 15,
            ),
            decoration: BoxDecoration(
              color: kWhite,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Lokasi Penjemputan",
                  style: kHeading6.copyWith(fontSize: 16),
                ),
                const Divider(color: kGrey),
                Text(
                  "${placemark!.street}",
                  style: kHeading6.copyWith(fontSize: 14),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 1),
                Text(
                  "${placemark?.subLocality}, ${placemark?.locality}, ${placemark?.country}",
                  style: kBodyText,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
        );

    Widget buildFoodDetail({product}) => Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Container(
            width: double.maxFinite,
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 15,
            ),
            decoration: BoxDecoration(
              color: kWhite,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Detail Makanan",
                  style: kHeading6.copyWith(fontSize: 16),
                ),
                const Divider(color: kGrey),
                const SizedBox(height: 5),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: CachedNetworkImage(
                        width: 120,
                        height: 100,
                        imageUrl: "${product.imageUrl}",
                        fit: BoxFit.cover,
                        placeholder: (context, url) => const Center(
                          child: CircularProgressIndicator(),
                        ),
                        errorWidget: (context, url, error) =>
                            const Icon(Icons.error),
                      ),
                    ),
                    const SizedBox(width: 15),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "${product.name}",
                            style: kHeading6,
                          ),
                          Text(
                            "${product.date}",
                            style: kSubtitle,
                            maxLines: 3,
                            overflow: TextOverflow.ellipsis,
                          ),
                          const SizedBox(height: 5),
                          Text(
                            NumberFormat.currency(
                              locale: 'id',
                              symbol: 'Rp. ',
                              decimalDigits: 0,
                            ).format(product.price),
                            style: kSubtitle.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                const Divider(color: kGrey),
                Text(
                  "Deskripsi Makan...",
                  style: kHeading6.copyWith(fontSize: 16),
                ),
                const SizedBox(height: 3),
                Text(
                  "${product.desc}",
                  style: kBodyText,
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                ),
                const Divider(color: kGrey),
              ],
            ),
          ),
        );

    Widget buildButtonPayment({required String id}) => Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          child: CustomButton(
            title: "Jemput Barang",
            onPressed: () {
              NDialog(
                title: Text(
                  "Konfirmasi",
                  style: kHeading6,
                  textAlign: TextAlign.center,
                ),
                content: Text(
                  "Anda harus benar-benar menjemput barang ini, jika anda yakin makan lanjut 'YA'",
                  style: kBodyText,
                  textAlign: TextAlign.center,
                ),
                actions: [
                  TextButton(
                    onPressed: () {
                      context.pop();
                    },
                    child: Text(
                      "Tidak",
                      style: kSubtitle.copyWith(
                        color: kBlack,
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      context.pop();
                      ProgressDialog.future(
                        context,
                        title: Text(
                          "Proses order",
                          style: kHeading6,
                          textAlign: TextAlign.center,
                        ),
                        blur: 2,
                        message: Text(
                          "Proses ordering akan menghapus item ini",
                          style: kBodyText,
                        ),
                        future: Future.delayed(const Duration(seconds: 5)),
                        onProgressFinish: (_) {
                          context.read<ProductBloc>().add(
                                ProductEvent.deleteProduct(id),
                              );
                        },
                      ).then((_) {
                        context.replaceNamed('main');
                      });
                    },
                    child: Text(
                      "Ya",
                      style: kSubtitle.copyWith(
                        color: kSecondery,
                      ),
                    ),
                  )
                ],
              ).show(context);
            },
          ),
        );

    return WillPopScope(
      onWillPop: () async {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Gunakan tombol back pada appbar'),
          ),
        );
        return false;
      },
      child: Scaffold(
        extendBodyBehindAppBar: true,
        backgroundColor: kBackGroundColor,
        appBar: AppBar(
          elevation: 0,
          centerTitle: true,
          title: const Text("Food"),
          backgroundColor: kPrimary,
          leading: IconButton(
            onPressed: () {
              router.goNamed('main');
            },
            icon: const Icon(Icons.arrow_back_rounded),
          ),
        ),
        body: ListView(
          physics: const BouncingScrollPhysics(),
          children: [
            buildMap(lat: product.lat, long: product.long),
            placemark == null ? const DisplayAddressSkeleton() : buildAddress(),
            buildFoodDetail(product: product),
            buildButtonPayment(id: product.id.toString()),
          ],
        ),
      ),
    );
  }
}
