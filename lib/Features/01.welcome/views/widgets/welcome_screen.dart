import 'package:flutter/material.dart';
import 'package:readit/Core/utlis/assets.dart';

import '../../../../Core/shared_widgets/custom_button.dart';
import '../../../../Core/shared_widgets/page_header.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          PageHeader(image:AssetImages.splash),
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
                      // Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //         builder: (context) => const SignInScreen()));
                    }),
                const SizedBox(
                  height: 30,
                ),
                CustomButton(
                    innerText: 'Sign Up',
                    onPressed: () {
                      // Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //         builder: (context) => const SignUpScreen()));
                    }),
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