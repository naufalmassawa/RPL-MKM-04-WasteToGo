import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:waste_to_go/presentation/blocs/page_and_kategory_cubit.dart';

import '../utils/constants.dart';

class CustomCategory extends StatelessWidget {
  const CustomCategory({
    super.key,
    required this.title,
    required this.index,
  });

  final String title;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(right: 40),
        child: GestureDetector(
          onTap: () => context.read<CategoryCubit>().setCategory(index),
          child: Column(
            children: [
              Text(
                title,
                style: kSubtitle.copyWith(
                  color: context.watch<CategoryCubit>().state == index
                      ? kSecondery
                      : kGrey,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 3),
              context.watch<CategoryCubit>().state == index
                  ? Container(
                      width: 8,
                      height: 8,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: kSecondery,
                      ),
                    )
                  : const SizedBox()
            ],
          ),
        ));
  }
}
