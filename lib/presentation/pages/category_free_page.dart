import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:waste_to_go/presentation/blocs/product_bloc.dart';
import 'package:waste_to_go/presentation/widgets/custom_food_card.dart';

import '../utils/constants.dart';

class CategoryFreePage extends StatefulWidget {
  const CategoryFreePage({super.key});

  @override
  State<CategoryFreePage> createState() => _CategoryFreePageState();
}

class _CategoryFreePageState extends State<CategoryFreePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackGroundColor,
      body: BlocBuilder<GetFreeProductBloc, ProductState>(
        builder: (context, state) {
          return state.maybeWhen(
            getFree: (product) {
              if (product.isNotEmpty) {
                return GridView.builder(
                    physics: const BouncingScrollPhysics(),
                    padding: const EdgeInsets.symmetric(
                      vertical: 10,
                      horizontal: 20,
                    ),
                    gridDelegate:
                        const SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 300,
                      childAspectRatio: 2 / 2.5,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                    ),
                    itemCount: product.length,
                    itemBuilder: (BuildContext ctx, index) {
                      return CustomFoodCard(product: product[index]);
                    });
              }
              return Text(
                "Kategori ini masih kosong",
                style: kHeading6,
              );
            },
            orElse: () => const Center(
              child: CircularProgressIndicator(),
            ),
          );
        },
      ),
    );
  }
}
