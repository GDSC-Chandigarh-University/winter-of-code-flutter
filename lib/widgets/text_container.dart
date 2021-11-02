import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TextContainer extends StatelessWidget {
  String? title;
  String? description;
  String? link;
  void Function()? onTap;
  bool isDisabled;
  TextContainer({
    Key? key,
    @required this.title,
    @required this.description,
    this.link,
    this.onTap,
    this.isDisabled = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          height: screenWidth < 500 ? screenWidth * 0.45 : 256.0,
          width: screenWidth < 965 ? 625.0 : ((screenWidth - 190) / 2),
          padding: EdgeInsets.all(
            screenWidth < 965 ? 30.0 : 40.0,
          ),
          decoration: BoxDecoration(
            color: !isDisabled
                ? context.theme.primaryColor
                : context.theme.cardColor,
            borderRadius: BorderRadius.circular(12.0),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                child: AutoSizeText(
                  '$title',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: screenWidth < 500 ? screenWidth * 0.045 : 42.0,
                    color: !isDisabled ? Colors.white : Colors.black54,
                  ),
                  maxLines: 1,
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              SizedBox(
                child: AutoSizeText(
                  '''$description''',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: screenWidth < 500 ? 12 : 22.0,
                    color: !isDisabled ? Colors.white : Colors.black54,
                  ),
                  maxLines: screenWidth < 500 ? 4 : 3,
                ),
              ),
              link != null
                  ? SizedBox(
                      child: AutoSizeText(
                        '$link',
                        style: const TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 22.0,
                          color: Colors.white,
                        ),
                        maxLines: 1,
                      ),
                    )
                  : Container(),
            ],
          ),
        ),
      ),
    );
  }
}
