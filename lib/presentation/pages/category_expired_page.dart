import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../blocs/product_bloc.dart';
import '../utils/constants.dart';
import '../widgets/custom_food_card.dart';

class CategoryExpiredPage extends StatefulWidget {
  const CategoryExpiredPage({super.key});

  @override
  State<CategoryExpiredPage> createState() => _CategoryExpiredPageState();
}

class _CategoryExpiredPageState extends State<CategoryExpiredPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackGroundColor,
      body: BlocBuilder<GetExpiredProductBloc, ProductState>(
        builder: (context, state) {
          return state.maybeWhen(
            getExpired: (product) {
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
