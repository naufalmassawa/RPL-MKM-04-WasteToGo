import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../blocs/page_cubit.dart';
import '../utils/constants.dart';
import '../widgets/custom_buttom_nav.dart';
import 'add_food_page.dart';
import 'home_page.dart';
import 'setting_page.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget buildContent(int currentIndex) {
      switch (currentIndex) {
        case 0:
          return const HomePage();
        case 1:
          return const AddFoodPage();
        case 2:
          return const SettingPage();
        default:
          return const HomePage();
      }
    }

    Widget buildBottomNavigation() {
      return Align(
        alignment: Alignment.bottomCenter,
        child: SizedBox(
          height: 60,
          child: Material(
            color: kWhite,
            elevation: 1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                ButtomNavItems(
                  iconPth: 'assets/home.svg',
                  index: 0,
                ),
                ButtomNavItems(
                  iconPth: 'assets/plus.svg',
                  index: 1,
                ),
                ButtomNavItems(
                  iconPth: 'assets/settings.svg',
                  index: 2,
                ),
              ],
            ),
          ),
        ),
      );
    }

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: BlocBuilder<PageCubit, int>(
        builder: (context, state) {
          return Stack(
            children: [
              buildContent(state),
              buildBottomNavigation(),
            ],
          );
        },
      ),
    );
  }
}
