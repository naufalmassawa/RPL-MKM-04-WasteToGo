import 'package:flutter/material.dart';

import '../utils/constants.dart';

class MapViewSkeleton extends StatelessWidget {
  const MapViewSkeleton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    return Padding(
      padding: const EdgeInsets.only(
        left: 20,
        right: 20,
        top: 20,
      ),
      child: Container(
        height: height * 0.4,
        decoration: BoxDecoration(
          color: kGrey,
          borderRadius: BorderRadius.circular(20),
        ),
        child: const Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}

class DisplayAddressSkeleton extends StatelessWidget {
  const DisplayAddressSkeleton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 10,
      ),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 30),
        width: double.maxFinite,
        decoration: BoxDecoration(
          color: kGrey,
          borderRadius: BorderRadius.circular(20),
        ),
        child: const Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}
