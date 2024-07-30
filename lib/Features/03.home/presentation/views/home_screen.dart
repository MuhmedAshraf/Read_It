import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:readit/Core/utlis/colors.dart';
import 'package:readit/Features/03.home/presentation/views/widgets/book_listView.dart';
import 'package:readit/Features/03.home/presentation/views/widgets/custom_AppBar.dart';
import 'package:readit/Features/03.home/presentation/views/widgets/custom_book_item.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.bgColor,
      body: HomeScreenBody(),
    );
  }
}

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  const SafeArea(
      child: Column(
        children: [
          CustomAppBar(),
          BookListView(),
        ],
      ),
    );
  }
}


