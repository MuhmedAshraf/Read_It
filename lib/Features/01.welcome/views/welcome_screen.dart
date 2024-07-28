import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:readit/Core/utlis/app_routers.dart';
import 'package:readit/Core/utlis/assets.dart';
import '../../../Core/shared_widgets/custom_button.dart';
import '../../../Core/shared_widgets/page_header.dart';
import '../../02.auth/presentation/views/sign_in_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          PageHeader(image: AssetImages.welcome),
          Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(20),
              ),
            ),
            child: Column(
              children: [
                CustomButton(
                  innerText: 'Log In',
                  onPressed: () {
                    GoRouter.of(context).push(AppRouter.kSignInScreen);
                  },
                ),
                const SizedBox(
                  height: 30,
                ),
                CustomButton(
                  innerText: 'Sign Up',
                  onPressed: () {
                    GoRouter.of(context).push(AppRouter.kSignUpScreen);
                  },
                ),
                const SizedBox(
                  height: 30,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
