import 'package:flutter/material.dart';

import '../utils/constants.dart';

class CustomOutlineTextField extends StatelessWidget {
  const CustomOutlineTextField({
    super.key,
    required this.hintText,
    required this.controller,
    this.suffixIcon,
    this.prefixIcon,
    this.keyboardType,
    this.obscureText = false,
    required this.label,
  });

  final String hintText;
  final String label;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final TextInputType? keyboardType;
  final bool obscureText;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Container(
        height: 48,
        decoration: BoxDecoration(
          color: kWhite,
          borderRadius: BorderRadius.circular(25),
        ),
        child: TextField(
          keyboardType: keyboardType,
          obscureText: obscureText,
          controller: controller,
          style: kSubtitle,
          decoration: InputDecoration(
            prefixIcon: prefixIcon,
            suffixIcon: suffixIcon,
            hintText: hintText,
            label: Text(
              label,
              style: kSubtitle.copyWith(height: 1.5, color: kPrimary),
            ),
            border: InputBorder.none,
            contentPadding: const EdgeInsets.symmetric(horizontal: 20),
            hintStyle: kSubtitle.copyWith(height: 1.05, color: kPrimary),
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(width: 1, color: kSecondery),
              borderRadius: BorderRadius.circular(25),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(width: 2, color: kPrimary),
              borderRadius: BorderRadius.circular(50),
            ),
            floatingLabelStyle: kSubtitle.copyWith(height: 1.05),
          ),
        ),
      ),
    );
  }
}
