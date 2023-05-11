import 'package:flutter/material.dart';

import '../utils/constants.dart';

class CustomBackground extends StatelessWidget {
  const CustomBackground({super.key, this.child});

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [kPrimaryLiner2, kPrimaryLiner1],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: child,
    );
  }
}
