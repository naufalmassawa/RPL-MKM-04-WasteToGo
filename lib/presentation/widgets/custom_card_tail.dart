import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../application/models/product_model.dart';
import '../routes/app_routes.dart';
import '../utils/constants.dart';

class CustomCardTail extends StatelessWidget {
  const CustomCardTail({
    super.key,
    required this.product,
  });

  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(15, 0, 15, 10),
      child: GestureDetector(
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
          height: 100,
          padding: const EdgeInsets.all(5),
          decoration: BoxDecoration(
            color: kWhite,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: CachedNetworkImage(
                      width: 110,
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
                      horizontal: 5,
                      vertical: 3,
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
                      style: kBodyText.copyWith(fontSize: 10),
                    ),
                  )
                ],
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      "${product.name}",
                      style: kSubtitle.copyWith(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          NumberFormat.currency(
                            locale: 'id',
                            symbol: 'Rp. ',
                            decimalDigits: 0,
                          ).format(product.price),
                          style: kSubtitle.copyWith(
                            fontWeight: FontWeight.bold,
                            color: product.price == 0 ? kGrey : kBlack,
                            decoration: product.price == 0
                                ? TextDecoration.lineThrough
                                : TextDecoration.none,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        const SizedBox(width: 5),
                        product.price == 0
                            ? Text(
                                "(Gratis)",
                                style: kSubtitle.copyWith(
                                  fontWeight: FontWeight.bold,
                                  color: kSecondery,
                                ),
                              )
                            : const SizedBox()
                      ],
                    ),
                    Text(
                      "${product.desc}",
                      style: kBodyText,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
