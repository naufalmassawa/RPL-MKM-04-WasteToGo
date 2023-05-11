import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:waste_to_go/presentation/blocs/product_bloc.dart';
import 'package:waste_to_go/presentation/widgets/custom_card_tail.dart';

import '../routes/app_routes.dart';

class AllFoodPage extends StatefulWidget {
  const AllFoodPage({super.key});

  @override
  State<AllFoodPage> createState() => _AllFoodPageState();
}

class _AllFoodPageState extends State<AllFoodPage> {
  @override
  void initState() {
    super.initState();
    Future.microtask(
      () => context.read<ProductBloc>().add(const ProductEvent.getAllProduct()),
    );
  }

  @override
  Widget build(BuildContext context) {
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
        appBar: AppBar(
          elevation: 0,
          centerTitle: true,
          title: const Text("Semua Makanan"),
          leading: IconButton(
            onPressed: () {
              router.goNamed("main");
            },
            icon: const Icon(Icons.arrow_back_rounded),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: BlocBuilder<ProductBloc, ProductState>(
            builder: (context, state) {
              return state.maybeWhen(
                loaded: (product) {
                  return ListView.builder(
                    itemCount: product.length,
                    itemBuilder: (context, index) {
                      return CustomCardTail(product: product[index]);
                    },
                  );
                },
                orElse: () => const Center(
                  child: CircularProgressIndicator(),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
