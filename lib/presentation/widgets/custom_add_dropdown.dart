import 'package:flutter/material.dart';

import '../utils/constants.dart';

class CustomExpiredDropdown extends StatelessWidget {
  final Function(Object?) onChanged;
  final Object dropdownValue;

  const CustomExpiredDropdown({
    super.key,
    required this.onChanged,
    required this.dropdownValue,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      width: double.maxFinite,
      padding: const EdgeInsets.only(left: 25, right: 18),
      decoration: BoxDecoration(
        color: kWhite,
        borderRadius: BorderRadius.circular(25),
        border: Border.all(
          color: kSecondery,
        ),
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton(
          isExpanded: true,
          value: dropdownValue,
          icon: const Icon(
            Icons.arrow_drop_down_circle_outlined,
          ),
          style: kSubtitle.copyWith(color: Colors.black54),
          onChanged: onChanged,
          items: expired.map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(
                value.toUpperCase(),
                style: kSubtitle,
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}

List<String> expired = [
  'unexpired',
  'expired',
];
