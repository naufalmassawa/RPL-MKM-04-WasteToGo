import 'package:flutter/material.dart';

import '../utils/constants.dart';

class CustomTextFood extends StatelessWidget {
  const CustomTextFood({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Welcome to Waste.To.Go!',
          style: kHeading1.copyWith(height: 1, color: kWhite),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 5),
          child: Text(
            'Waste Free Full Tummy!',
            style: kBodyText.copyWith(color: kWhite),
          ),
        ),
      ],
    );
  }
}
