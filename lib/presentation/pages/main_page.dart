import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../blocs/auth_bloc.dart';
import '../blocs/page_and_kategory_cubit.dart';
import '../utils/constants.dart';
import '../widgets/custom_buttom_nav.dart';
import 'add_food_page.dart';
import 'home_page.dart';
import 'setting_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  DateTime currentBackPressTime = DateTime.now();
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
      return BlocBuilder<AuthBloc, AuthState>(
        builder: (context, state) {
          return Align(
            alignment: Alignment.bottomCenter,
            child: SizedBox(
              height: 60,
              child: Material(
                color: kWhite,
                elevation: 1,
                child: state.maybeWhen(
                  loaded: (user) => Row(
                    mainAxisAlignment: user!.role == 'penjual'
                        ? MainAxisAlignment.spaceAround
                        : MainAxisAlignment.spaceEvenly,
                    children: [
                      const ButtomNavItems(
                        iconPth: 'assets/home.svg',
                        index: 0,
                      ),
                      user.role == 'penjual'
                          ? const ButtomNavItems(
                              iconPth: 'assets/plus.svg',
                              index: 1,
                            )
                          : const SizedBox(),
                      const ButtomNavItems(
                        iconPth: 'assets/settings.svg',
                        index: 2,
                      ),
                    ],
                  ),
                  orElse: () => Row(
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
            ),
          );
        },
      );
    }

    return WillPopScope(
      onWillPop: () async {
        final difference = DateTime.now().difference(currentBackPressTime);
        final exitWarning = difference >= const Duration(seconds: 2);
        currentBackPressTime = DateTime.now();
        if (exitWarning) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Tekan sekali lagi untuk keluar'),
            ),
          );
          return false;
        } else {
          return true;
        }
      },
      child: Scaffold(
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
      ),
    );
  }
}
