import 'package:flutter/material.dart';

import '../../../../../Core/utlis/assets.dart';
import '../../../../../Core/utlis/styles.dart';
import 'custom_book_image_item.dart';

class CustomBookItem extends StatelessWidget {
  const CustomBookItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: const Padding(
        padding: EdgeInsets.all(15),
        child: SizedBox(
          height: 130,
          child: Row(
            children: [
              CustomBookImageItem(imageUrl: AssetImages.testBook),
              SizedBox(
                width: 30,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Spacer(),
                  Text(
                    'The Great Gatsby',
                    style: AppStyles.textStyle20,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'by F. Scott Fitzgerald',
                    style: AppStyles.textStyle14,
                  ),
                  Spacer(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
