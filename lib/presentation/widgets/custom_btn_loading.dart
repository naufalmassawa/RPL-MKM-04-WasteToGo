import 'package:flutter/material.dart';

import '../utils/constants.dart';

class CustomBtnLoading extends StatelessWidget {
  const CustomBtnLoading({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: TextButton.styleFrom(
        elevation: 0,
        backgroundColor: kBlack,
        fixedSize: const Size(double.maxFinite, 48),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
      ),
      onPressed: () {},
      child: const Center(
        child: CircularProgressIndicator(
          color: kWhite,
        ),
      ),
    );
  }
}
