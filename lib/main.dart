import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:readit/Core/utlis/app_routers.dart';
import 'package:readit/Features/02.auth/presentation/view_model/user_cubit/user_cubit.dart';

void main() {
  runApp(const ReadIt());
}

class ReadIt extends StatelessWidget {
  const ReadIt({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => UserCubit(),
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        routerConfig: AppRouter.router,

      ),
    );
  }
}


