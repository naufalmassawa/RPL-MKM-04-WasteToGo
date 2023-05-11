import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:waste_to_go/presentation/blocs/product_bloc.dart';
import 'package:waste_to_go/presentation/routes/app_routes.dart';

import '../widgets/custom_card_tail.dart';

class FreeFoodPage extends StatefulWidget {
  const FreeFoodPage({super.key});

  @override
  State<FreeFoodPage> createState() => _FreeFoodPageState();
}

class _FreeFoodPageState extends State<FreeFoodPage> {
  @override
  void initState() {
    super.initState();
    Future.microtask(
      () => context
          .read<GetFreeProductBloc>()
          .add(const GetFreeProductEvent.getFreeProduct()),
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
          title: const Text("Makanan Gratis"),
          leading: IconButton(
            onPressed: () {
              router.goNamed("main");
            },
            icon: const Icon(Icons.arrow_back_rounded),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: BlocBuilder<GetFreeProductBloc, ProductState>(
            builder: (context, state) {
              return state.maybeWhen(
                getFree: (product) {
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
