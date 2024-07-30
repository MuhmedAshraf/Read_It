import 'package:flutter/material.dart';

import 'custom_book_item.dart';

class BookListView extends StatelessWidget {
  const BookListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemBuilder: (context,i) {
          return const Padding(
            padding: EdgeInsets.all(8.0),
            child: CustomBookItem(),
          );
        },
        itemCount: 15,
        physics: const BouncingScrollPhysics(),
      ),
    );
  }
}
