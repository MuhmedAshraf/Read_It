import 'package:flutter/material.dart';
import 'package:readit/Core/utlis/app_routers.dart';

void main() {
  runApp(const ReadIt());
}

class ReadIt extends StatelessWidget {
  const ReadIt({super.key});

  @override
  Widget build(BuildContext context) {
    return   MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: AppRouter.router,

    );
  }
}


