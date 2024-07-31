import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:readit/Core/Api_helper/dio_consumer.dart';
import 'package:readit/Core/utlis/colors.dart';
import 'package:readit/Features/03.home/data/repo/books_repo.dart';
import 'package:readit/Features/03.home/presentation/views/widgets/home_screen_body.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: AppColors.bgColor,
      body: HomeScreenBody(booksRepo: BooksRepo(api: DioConsumer(dio: Dio())),),
    );
  }
}



