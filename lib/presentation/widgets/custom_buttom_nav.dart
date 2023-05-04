import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

import '../blocs/page_cubit.dart';
import '../utils/constants.dart';

class ButtomNavItems extends StatelessWidget {
  const ButtomNavItems({
    super.key,
    required this.iconPth,
    required this.index,
  });

  final String iconPth;
  final int index;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        context.read<PageCubit>().setPage(index);
      },
      icon: SvgPicture.asset(
        iconPth,
        colorFilter: ColorFilter.mode(
          context.watch<PageCubit>().state == index
              ? kSecondery
              : Colors.black45,
          BlendMode.srcIn,
        ),
      ),
    );
  }
}
