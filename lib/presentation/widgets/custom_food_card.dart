import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../application/models/product_model.dart';
import '../routes/app_routes.dart';
import '../utils/constants.dart';

class CustomFoodCard extends StatelessWidget {
  const CustomFoodCard({
    super.key,
    required this.product,
  });

  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        router.goNamed(
          'detail',
          params: {
            'id': product.id.toString(),
          },
          extra: product,
        );
      },
      child: Container(
        height: 200,
        width: 170,
        padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 4),
        decoration: BoxDecoration(
          color: kWhite,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: CachedNetworkImage(
                    height: 115,
                    width: double.maxFinite,
                    imageUrl: "${product.imageUrl}",
                    fit: BoxFit.cover,
                    placeholder: (context, url) => const Center(
                      child: CircularProgressIndicator(color: kBlack),
                    ),
                    errorWidget: (context, url, error) =>
                        const Icon(Icons.error),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8,
                    vertical: 5,
                  ),
                  decoration: const BoxDecoration(
                    color: kWhite,
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(15),
                      topLeft: Radius.circular(10),
                    ),
                  ),
                  child: Text(
                    '${product.expired}',
                    style: kBodyText.copyWith(fontSize: 12),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, top: 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    product.name.toString(),
                    style: kSubtitle.copyWith(fontSize: 14),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  product.price == 0
                      ? Text(
                          "Gratis",
                          style: kBodyText.copyWith(
                            fontSize: 12,
                            color: kSecondery,
                          ),
                        )
                      : Text(
                          NumberFormat.currency(
                            locale: 'id',
                            symbol: 'Rp. ',
                            decimalDigits: 0,
                          ).format(product.price),
                          style: kBodyText.copyWith(fontSize: 12),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                  const SizedBox(height: 2),
                  Text(
                    product.desc.toString(),
                    style: kBodyText.copyWith(fontSize: 8),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 5),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
