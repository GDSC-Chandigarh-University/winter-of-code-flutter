import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ThemedButton extends StatelessWidget {
  VoidCallback? onPressed;
  String? title;
  ThemedButton({Key? key, @required this.onPressed, @required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPressed,
      fillColor: context.theme.primaryColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 40.0,
        vertical: 20.0,
      ),
      child: Text(
        '$title',
        style: const TextStyle(
          fontSize: 18.0,
          fontWeight: FontWeight.w600,
          color: Colors.white,
        ),
      ),
    );
  }
}
