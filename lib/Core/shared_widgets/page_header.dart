import 'package:flutter/material.dart';

class PageHeader extends StatelessWidget {

  String image;

  PageHeader({
    Key? key,
    this.image = 'assets/images/friendship.png',
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery
        .of(context)
        .size;
    return SizedBox(
      width: double.infinity,
      height: size.height * 0.3,
      child: Image.asset(image, fit: BoxFit.cover,),
    );
  }
}
