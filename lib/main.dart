import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:readit/Core/cache_helper/cache_helper.dart';
import 'package:readit/Core/utlis/app_routers.dart';
import 'package:readit/Features/02.auth/data/repo/auth_repo.dart';
import 'package:readit/Features/02.auth/presentation/view_model/user_cubit/user_cubit.dart';
import 'package:readit/Features/03.home/presentation/views/home_screen.dart';

import 'Core/Api_helper/dio_consumer.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  CacheHelper().init();
  runApp(const ReadIt());
}

// class ReadIt extends StatelessWidget {
//   const ReadIt({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return BlocProvider(
//       create: (context) => UserCubit(
//         authRepo: AuthRepo(
//           api: DioConsumer(
//             dio: Dio(),
//           ),
//         ),
//       ),
//       child: MaterialApp.router(
//         debugShowCheckedModeBanner: false,
//         routerConfig: AppRouter.router,
//       ),
//     );
//   }
// }
//
class ReadIt extends StatelessWidget {
  const ReadIt({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
