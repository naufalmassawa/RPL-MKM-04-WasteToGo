import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../application/models/user_model.dart';
import '../blocs/auth_bloc.dart';
import '../routes/app_routes.dart';
import '../utils/constants.dart';
import '../widgets/custom_backgroud.dart';
import '../widgets/custom_btn_loading.dart';
import '../widgets/custom_button.dart';
import '../widgets/custom_text_button.dart';
import '../widgets/custom_text_field.dart';
import '../widgets/custom_text_food.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final emailController = TextEditingController(text: '');
  final passwordController = TextEditingController(text: '');
  bool isVisible = false;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    Widget sloganText() => const CustomTextFood();

    Widget emailInput() => Padding(
          padding: EdgeInsets.only(top: height * 0.1),
          child: CustomTextField(
            hintText: "Email Address",
            controller: emailController,
            keyboardType: TextInputType.emailAddress,
            prefixIcon: const Icon(Icons.email_rounded),
          ),
        );
    Widget passwordInput() => Padding(
          padding: const EdgeInsets.only(top: 15),
          child: CustomTextField(
            hintText: "Password",
            controller: passwordController,
            prefixIcon: const Icon(Icons.lock_rounded),
            suffixIcon: IconButton(
              onPressed: () {
                setState(() {
                  isVisible = !isVisible;
                });
              },
              icon: !isVisible
                  ? const Icon(
                      Icons.visibility_off_sharp,
                      color: Colors.black38,
                    )
                  : const Icon(
                      Icons.visibility,
                      color: kPrimary,
                    ),
            ),
            obscureText: !isVisible,
          ),
        );
    Widget buttonSubmit() => BlocConsumer<AuthBloc, AuthState>(
          listener: (context, state) {
            state.whenOrNull(
              loaded: (user) {
                return router.goNamed(
                  'main',
                  extra: state,
                );
              },
              error: (message) => hendleError(context, message),
            );
          },
          builder: (context, state) {
            return Padding(
              padding: const EdgeInsets.only(top: 80),
              child: state.maybeWhen(
                loading: () => const CustomBtnLoading(),
                orElse: () => CustomButton(
                  title: "Login",
                  onPressed: () {
                    hendleRegister(context);
                  },
                ),
              ),
            );
          },
        );
    Widget textButton() => Padding(
          padding: EdgeInsets.only(top: 15, bottom: height * 0.1),
          child: CustomTextButton(
            textBtn: "Register",
            onTap: () {
              router.pushNamed('register');
            },
          ),
        );

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: CustomBackground(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                sloganText(),
                emailInput(),
                passwordInput(),
                buttonSubmit(),
                textButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void hendleRegister(BuildContext context) {
    UserModel userController = UserModel(
      email: emailController.text,
      password: passwordController.text,
    );

    if (emailController.text.isEmpty) {
      const snackbar = SnackBar(content: Text('Email belum di isi'));
      ScaffoldMessenger.of(context).showSnackBar(snackbar);
    } else if (passwordController.text.isEmpty) {
      const snackbar = SnackBar(content: Text('Password belum di isi'));
      ScaffoldMessenger.of(context).showSnackBar(snackbar);
    } else {
      context.read<AuthBloc>().add(AuthEvent.login(user: userController));
    }
  }

  void hendleError(BuildContext context, message) {
    final snackbar = SnackBar(content: Text(message));
    ScaffoldMessenger.of(context).showSnackBar(snackbar);
    // setState(() {
    //   emailController.text = '';
    //   passwordController.text = '';
    // });
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }
}
