import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:readit/Features/02.auth/presentation/views/sign_in_screen.dart';

import '../../../../../Core/utlis/app_routers.dart';

class AlreadyHaveAnAccountWidget extends StatelessWidget {
  const AlreadyHaveAnAccountWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            'Already have an account ? ',
            style: TextStyle(
                fontSize: 13,
                color: Color(0xff939393),
                fontWeight: FontWeight.bold),
          ),
          GestureDetector(
            onTap: () => {
              GoRouter.of(context).pushReplacement(AppRouter.kSignInScreen),
            },
            child: const Text(
              'Log-in',
              style: TextStyle(
                  fontSize: 15,
                  color: Color(0xff748288),
                  fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
