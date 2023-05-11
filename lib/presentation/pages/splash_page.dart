import 'dart:async';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../blocs/auth_bloc.dart';
import '../utils/constants.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 2), () {
      User? user = FirebaseAuth.instance.currentUser;
      if (user == null) {
        context.goNamed('get-started');
      } else {
        context.read<AuthBloc>().add(AuthEvent.currentUser(id: user.uid));
        context.goNamed('main');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: DefaultTextStyle(
          style: kHeading2.copyWith(color: kBlack),
          child: AnimatedTextKit(
            isRepeatingAnimation: true,
            animatedTexts: [
              RotateAnimatedText('WELCOME'),
            ],
          ),
        ),
      ),
    );
  }
}
