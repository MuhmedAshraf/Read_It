import 'package:flutter/material.dart';

class SlidingText extends StatelessWidget {
  const SlidingText({
    super.key,
    required this.slidingText,
  });

  final Animation<Offset> slidingText;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: slidingText,
      builder: (context, _) {
        return SlideTransition(
            position: slidingText,
            child: const Text(
              'Read Free Books',
              textAlign: TextAlign.center,
            ));
      },
    );
  }
}
