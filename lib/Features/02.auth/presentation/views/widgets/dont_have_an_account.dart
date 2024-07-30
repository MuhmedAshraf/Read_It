import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../Core/utlis/app_routers.dart';


class DontHaveAnAccountWidget extends StatelessWidget {
  const DontHaveAnAccountWidget({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size.width * 0.8,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Don\'t have an account ? ',
            style: TextStyle(
                fontSize: 13,
                color: Color(0xff939393),
                fontWeight: FontWeight.bold),
          ),
          GestureDetector(
            onTap: () => {
            GoRouter.of(context).pushReplacement(AppRouter.kSignUpScreen)
          },
            child: const Text(
              'Sign-up',
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
