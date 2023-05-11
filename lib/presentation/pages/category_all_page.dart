import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../blocs/product_bloc.dart';
import '../routes/app_routes.dart';
import '../utils/constants.dart';
import '../widgets/custom_card_tail.dart';
import '../widgets/custom_food_card.dart';

class CategoryAllPage extends StatefulWidget {
  const CategoryAllPage({super.key});

  @override
  State<CategoryAllPage> createState() => _CategoryAllPageState();
}

class _CategoryAllPageState extends State<CategoryAllPage> {
  @override
  Widget build(BuildContext context) {
    Widget buildFreeFoodDisplay() => Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Makanan Gratis",
                    style: kHeading6.copyWith(
                      fontWeight: FontWeight.bold,
                      color: Colors.black54,
                      fontSize: 16,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      router.goNamed('freeFood');
                    },
                    child: Text(
                      "Lihat Semua",
                      style: kBodyText.copyWith(
                        fontWeight: FontWeight.bold,
                        color: kSecondery,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 200,
              child: BlocBuilder<GetFreeProductBloc, ProductState>(
                builder: (context, state) {
                  return state.maybeWhen(
                    getFree: (product) {
                      if (product.isNotEmpty) {
                        return ListView.builder(
                          padding: const EdgeInsets.all(0),
                          scrollDirection: Axis.horizontal,
                          physics: const BouncingScrollPhysics(),
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.only(left: 15),
                              child: CustomFoodCard(product: product[index]),
                            );
                          },
                          itemCount: product.length,
                        );
                      }

                      return Center(
                        child: Text(
                          "List Makanan Kosong",
                          style: kHeading6.copyWith(color: Colors.black54),
                        ),
                      );
                    },
                    orElse: () => const Center(
                      child: CircularProgressIndicator(),
                    ),
                  );
                },
              ),
            )
          ],
        );

    Widget buildPayFoodDisplay() => Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 20,
                right: 20,
                top: 10,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Semua Makanan",
                    style: kHeading6.copyWith(
                      fontWeight: FontWeight.bold,
                      color: Colors.black54,
                      fontSize: 16,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      router.goNamed('allFood');
                    },
                    child: Text(
                      "Lihat Semua",
                      style: kBodyText.copyWith(
                        fontWeight: FontWeight.bold,
                        color: kSecondery,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            BlocBuilder<ProductBloc, ProductState>(
              builder: (context, state) {
                return state.maybeWhen(
                  loaded: (product) {
                    if (product.isNotEmpty) {
                      return Padding(
                        padding: const EdgeInsets.only(bottom: 60),
                        child: Column(
                          children: product
                              .map((e) => CustomCardTail(product: e))
                              .toList(),
                        ),
                      );
                    }

                    return Center(
                      child: Text(
                        "List Makanan Kosong",
                        style: kHeading6.copyWith(color: Colors.black54),
                      ),
                    );
                  },
                  orElse: () => const Center(
                    child: CircularProgressIndicator(),
                  ),
                );
              },
            )
          ],
        );
    return Scaffold(
      backgroundColor: kBackGroundColor,
      body: ListView(
        padding: const EdgeInsets.all(0),
        children: [
          buildFreeFoodDisplay(),
          buildPayFoodDisplay(),
        ],
      ),
    );
  }
}
