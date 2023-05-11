import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../blocs/auth_bloc.dart';
import '../blocs/page_and_kategory_cubit.dart';
import '../routes/app_routes.dart';
import '../utils/constants.dart';
import '../widgets/custom_button.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final double barHeight = MediaQuery.of(context).padding.top;

    Widget buildBackGround() => Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(30)),
            gradient: LinearGradient(
              colors: [
                kSeconderyLiner1,
                kSeconderyLiner2,
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          height: height * 0.09 + barHeight,
        );
    PreferredSizeWidget buildAppBar() => AppBar(
          elevation: 0,
          centerTitle: true,
          toolbarHeight: height * 0.08,
          backgroundColor: Colors.transparent,
          title: Text(
            "Settings",
            style: kHeading6.copyWith(fontWeight: FontWeight.bold),
          ),
        );

    Widget buildUserInfo() => Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Container(
            width: double.maxFinite,
            padding: const EdgeInsets.all(25),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              gradient: const LinearGradient(
                colors: [kSeconderyLiner1, kSeconderyLiner2],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            child: BlocBuilder<AuthBloc, AuthState>(
              builder: (context, state) {
                return state.maybeMap(
                  loaded: (value) {
                    return Column(
                      children: [
                        Container(
                          height: 120,
                          width: 120,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: kWhite,
                          ),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          "${value.user?.username}",
                          style: kHeading4.copyWith(color: kWhite),
                        ),
                        Text(
                          "${value.user?.email}",
                          style: kSubtitle.copyWith(color: kWhite),
                        ),
                        const SizedBox(height: 10),
                        Container(
                          padding: const EdgeInsets.symmetric(
                            vertical: 6,
                            horizontal: 15,
                          ),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: kWhite),
                          child: Text(
                            "${value.user?.role}".toUpperCase(),
                            style: kSubtitle.copyWith(color: kSeconderyLiner2),
                          ),
                        ),
                      ],
                    );
                  },
                  orElse: () => const Center(
                    child: CircularProgressIndicator(),
                  ),
                );
              },
            ),
          ),
        );

    Widget buildButtonLogout() => Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: CustomButton(
            title: "Logout",
            onPressed: () {
              router.goNamed('login');
              context.read<PageCubit>().setPage(0);
              context.read<AuthBloc>().add(const AuthEvent.logout());
            },
          ),
        );

    return Stack(
      children: [
        buildBackGround(),
        Scaffold(
            backgroundColor: Colors.transparent,
            appBar: buildAppBar(),
            body: Column(
              children: [
                buildUserInfo(),
                buildButtonLogout(),
              ],
            )),
      ],
    );
  }
}
