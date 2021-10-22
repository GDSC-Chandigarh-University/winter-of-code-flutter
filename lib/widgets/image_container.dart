import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ImageContainer extends StatelessWidget {
  String imageUrl;
  ImageContainer({Key? key, this.imageUrl = ''}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 256.0,
      width: 625.0,
      decoration: BoxDecoration(
        color: context.theme.primaryColor,
        borderRadius: BorderRadius.circular(12.0),
        image: DecorationImage(
          image: NetworkImage(imageUrl),
        ),
      ),
    );
  }
}
