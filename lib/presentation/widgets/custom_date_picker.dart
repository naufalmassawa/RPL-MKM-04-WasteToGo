import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../utils/constants.dart';

class CustomDatePicker extends StatelessWidget {
  const CustomDatePicker({
    super.key,
    required this.controller,
    required this.hintText,
  });

  final TextEditingController controller;
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: TextField(
        readOnly: true,
        controller: controller,
        decoration: InputDecoration(
          hintText: hintText,
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
        onTap: () async {
          var date = await showDatePicker(
              context: context,
              initialDate: DateTime.now(),
              firstDate: DateTime(2000),
              lastDate: DateTime(2100));
          if (date != null) {
            controller.text = DateFormat('MM/dd/yyyy').format(date);
          }
        },
      ),
    );
  }
}
