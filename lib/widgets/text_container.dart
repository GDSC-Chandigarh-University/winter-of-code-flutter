import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TextContainer extends StatelessWidget {
  String? title;
  String? description;
  String? link;
  Function? onTap;
  TextContainer({
    Key? key,
    @required this.title,
    @required this.description,
    this.link,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap;
      },
      child: Container(
        height: 256.0,
        width: 625.0,
        padding: const EdgeInsets.all(
          40.0,
        ),
        decoration: BoxDecoration(
          color: context.theme.primaryColor,
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '$title',
              style: const TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 42.0,
                color: Colors.white,
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            Text(
              '''$description''',
              style: const TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 22.0,
                color: Colors.white,
              ),
            ),
            link != null
                ? Text(
                    '$link',
                    style: const TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 22.0,
                      color: Colors.white,
                    ),
                  )
                : Container(),
          ],
        ),
      ),
    );
  }
}
