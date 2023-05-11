import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../application/models/user_model.dart';
import '../blocs/auth_bloc.dart';
import '../routes/app_routes.dart';
import '../utils/constants.dart';
import '../widgets/custom_backgroud.dart';
import '../widgets/custom_btn_loading.dart';
import '../widgets/custom_button.dart';
import '../widgets/custom_register_dropdown.dart';
import '../widgets/custom_text_button.dart';
import '../widgets/custom_text_field.dart';
import '../widgets/custom_text_food.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final usernameController = TextEditingController(text: '');
  final emailController = TextEditingController(text: '');
  final passwordController = TextEditingController(text: '');
  final confirmpasswordController = TextEditingController(text: '');

  bool isVisible = false;
  bool isConfirmVisible = false;
  String dropdownValue = list.first;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    Widget sloganText() => const CustomTextFood();

    Widget usernameInput() => Padding(
          padding: EdgeInsets.only(top: height * 0.1),
          child: CustomTextField(
            hintText: "Username",
            controller: usernameController,
            prefixIcon: const Icon(Icons.person_rounded),
          ),
        );
    Widget emailInput() => Padding(
          padding: const EdgeInsets.only(top: 15),
          child: CustomTextField(
            hintText: "Email Address",
            controller: emailController,
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
                if (mounted) {
                  setState(() {
                    isVisible = !isVisible;
                  });
                }
              },
              icon: !isVisible
                  ? const Icon(Icons.visibility_off_sharp,
                      color: Colors.black38)
                  : const Icon(Icons.visibility, color: kPrimary),
            ),
            obscureText: !isVisible,
          ),
        );
    Widget confirmpassInput() => Padding(
          padding: const EdgeInsets.only(top: 15),
          child: CustomTextField(
            hintText: "Confirm Password",
            controller: confirmpasswordController,
            prefixIcon: const Icon(Icons.lock_rounded),
            suffixIcon: IconButton(
              onPressed: () {
                if (mounted) {
                  setState(() {
                    isConfirmVisible = !isConfirmVisible;
                  });
                }
              },
              icon: !isConfirmVisible
                  ? const Icon(Icons.visibility_off_sharp,
                      color: Colors.black38)
                  : const Icon(Icons.visibility, color: kPrimary),
            ),
            obscureText: !isConfirmVisible,
          ),
        );

    Widget chooseRole() => Padding(
          padding: const EdgeInsets.only(top: 15),
          child: CustomDropdown(
            onChanged: (value) {
              if (mounted) {
                setState(() {
                  dropdownValue = value!.toString();
                });
              }
            },
            dropdownValue: dropdownValue,
          ),
        );

    Widget buttonSubmit() => BlocConsumer<AuthBloc, AuthState>(
          listener: (context, state) {
            state.whenOrNull(
              loaded: (data) => router.goNamed('main'),
              error: (message) => hendleError(context, message),
            );
          },
          builder: (context, state) {
            return Padding(
              padding: const EdgeInsets.only(top: 80),
              child: state.maybeWhen(
                loading: () => const CustomBtnLoading(),
                orElse: () => CustomButton(
                  title: "Register",
                  onPressed: () {
                    hendleRegister(context);
                  },
                ),
              ),
            );
          },
        );

    Widget textButton() => Padding(
          padding: const EdgeInsets.only(top: 15),
          child: CustomTextButton(
            textBtn: "Login",
            onTap: () {
              router.pushNamed('login');
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
                usernameInput(),
                emailInput(),
                passwordInput(),
                confirmpassInput(),
                chooseRole(),
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
      username: usernameController.text,
      email: emailController.text,
      password: passwordController.text,
      role: dropdownValue,
    );

    if (usernameController.text.isEmpty) {
      const snackbar = SnackBar(content: Text('Nama belum di isi'));
      ScaffoldMessenger.of(context).showSnackBar(snackbar);
    } else if (emailController.text.isEmpty) {
      const snackbar = SnackBar(content: Text('Email belum di isi'));
      ScaffoldMessenger.of(context).showSnackBar(snackbar);
    } else if (passwordController.text.isEmpty) {
      const snackbar = SnackBar(content: Text('Password belum di isi'));
      ScaffoldMessenger.of(context).showSnackBar(snackbar);
    } else if (passwordController.text != confirmpasswordController.text) {
      const snackbar = SnackBar(content: Text('Password Tidak Cocok'));
      ScaffoldMessenger.of(context).showSnackBar(snackbar);
    } else {
      context.read<AuthBloc>().add(AuthEvent.register(user: userController));
    }
  }

  void hendleError(BuildContext context, message) {
    final snackbar = SnackBar(content: Text(message));
    ScaffoldMessenger.of(context).showSnackBar(snackbar);
    if (mounted) {
      setState(() {
        usernameController.text = '';
        emailController.text = '';
        passwordController.text = '';
        confirmpasswordController.text = '';
      });
    }
  }

  @override
  void dispose() {
    usernameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    confirmpasswordController.dispose();
    super.dispose();
  }
}
