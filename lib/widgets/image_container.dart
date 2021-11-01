import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ImageContainer extends StatelessWidget {
  String imageUrl;
  ImageContainer({Key? key, this.imageUrl = ''}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Container(
      height: screenWidth < 500 ? screenWidth * 0.4 : 256.0,
      width: screenWidth < 965 ? 625.0 : ((screenWidth - 190) / 2),
      decoration: BoxDecoration(
        color: context.theme.primaryColor,
        borderRadius: BorderRadius.circular(12.0),
        image: DecorationImage(
          image: NetworkImage(imageUrl),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
