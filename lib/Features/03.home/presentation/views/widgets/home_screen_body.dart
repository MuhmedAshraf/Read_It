import 'package:flutter/material.dart';
import 'package:readit/Features/03.home/data/repo/books_repo.dart';
import 'book_listView.dart';
import 'custom_AppBar.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({super.key, required this.booksRepo});

  final BooksRepo booksRepo;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          const CustomAppBar(),
          TextButton(
              onPressed: () async {
                print(await booksRepo.getAllBooks());
              },
              child: const Text('click me')),
          const BookListView(),
        ],
      ),
    );
  }
}
