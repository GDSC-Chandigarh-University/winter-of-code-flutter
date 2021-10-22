import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:get/get.dart';

class TimelineTile extends StatelessWidget {
  bool isMain;
  String? title;
  String? dateText;
  Function()? action;
  TimelineTile({
    Key? key,
    this.isMain = false,
    @required this.title,
    @required this.dateText,
    this.action,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    getTextColor() {
      if (isMain) {
        return Colors.white;
      } else {
        return context.theme.backgroundColor == Colors.white
            ? Colors.black
            : Colors.white;
      }
    }

    getCardColor() {
      if (isMain) {
        return context.theme.primaryColor;
      } else {
        return context.theme.backgroundColor == Colors.white
            ? context.theme.cardColor
            : context.theme.backgroundColor;
      }
    }

    return Container(
      width: isMain ? 179.0 : 165.0,
      height: isMain ? 175.0 : 154.0,
      padding: const EdgeInsets.only(
        left: 20.0,
        right: 20.0,
        top: 20.0,
        bottom: 10.0,
      ),
      decoration: BoxDecoration(
        color: getCardColor(),
        borderRadius: BorderRadius.circular(12.0),
        border: Border.all(
          color: isMain
              ? Colors.transparent
              : context.theme.backgroundColor == Colors.white
                  ? Colors.transparent
                  : Colors.white,
          width: 1.0,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '$title',
            style: TextStyle(
              color: getTextColor(),
              fontSize: 16.0,
              fontWeight: FontWeight.w600,
            ),
          ),
          Text(
            '$dateText',
            style: TextStyle(
              fontSize: 12.0,
              color: getTextColor(),
            ),
          ),
        ],
      ),
    );
  }
}

class SpaceTile extends StatelessWidget {
  const SpaceTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 165.0,
      height: 154.0,
      padding: const EdgeInsets.only(
        left: 20.0,
        right: 20.0,
        top: 20.0,
        bottom: 10.0,
      ),
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(12.0),
        border: Border.all(
          color: Colors.transparent,
          width: 1.0,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            '',
            style: TextStyle(
              color: Colors.transparent,
              fontSize: 16.0,
              fontWeight: FontWeight.w600,
            ),
          ),
          Text(
            '',
            style: TextStyle(
              fontSize: 12.0,
              color: Colors.transparent,
            ),
          ),
        ],
      ),
    );
  }
}
