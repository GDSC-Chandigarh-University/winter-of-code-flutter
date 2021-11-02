import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProcessTile extends StatelessWidget {
  int? number;
  String? title;
  String? description;
  ProcessTile({
    Key? key,
    @required this.number,
    @required this.title,
    @required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Container(
      width: 388,
      height: 232,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.0),
        border: Border.all(
          width: 1.0,
          color: context.theme.backgroundColor == Colors.white
              ? Colors.black
              : Colors.white,
        ),
      ),
      padding: EdgeInsets.fromLTRB(
          25.0, screenWidth < 500 ? 25.0 : 35.0, 25.0, 25.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            '${number.toString()}.',
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 40.0,
              color: context.theme.backgroundColor == Colors.white
                  ? Colors.black
                  : Colors.white,
            ),
          ),
          Text(
            '$title',
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 22.0,
              color: context.theme.backgroundColor == Colors.white
                  ? Colors.black
                  : Colors.white,
            ),
          ),
          const Spacer(),
          SizedBox(
            child: AutoSizeText(
              '$description',
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 18.0,
                color: context.theme.backgroundColor == Colors.white
                    ? Colors.black
                    : Colors.white,
              ),
              maxLines: 3,
            ),
          ),
        ],
      ),
    );
  }
}
