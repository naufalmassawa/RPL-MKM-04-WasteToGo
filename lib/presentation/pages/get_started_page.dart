import 'package:flutter/material.dart';

import '../routes/app_routes.dart';
import '../widgets/custom_backgroud.dart';
import '../widgets/custom_button.dart';
import '../widgets/custom_text_food.dart';

class GetStartedPage extends StatelessWidget {
  const GetStartedPage({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: CustomBackground(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: height * 0.05),
            Image.asset('assets/food_image.png'),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
              child: CustomTextFood(),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 30),
              child: CustomButton(
                title: "Get Started",
                onPressed: () {
                  router.pushNamed('login');
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
