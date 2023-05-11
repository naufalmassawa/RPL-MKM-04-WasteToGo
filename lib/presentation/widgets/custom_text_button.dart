import 'package:flutter/material.dart';

import '../utils/constants.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({
    super.key,
    required this.textBtn,
    required this.onTap,
  });

  final String textBtn;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Have An Account  ",
          style: kSubtitle.copyWith(
            color: kWhite,
            fontWeight: FontWeight.bold,
          ),
        ),
        GestureDetector(
          onTap: onTap,
          child: Text(
            textBtn,
            style: kSubtitle.copyWith(
              color: kSeconderyLiner2,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
