import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SponsorsTile extends StatelessWidget {
  String? logoLink;
  String? sponsorName;
  String? title;
  SponsorsTile({
    Key? key,
    @required this.logoLink,
    @required this.sponsorName,
    @required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Container(
      width: screenWidth < 500 ? 140 : 180.0,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 120.0,
            height: 120.0,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: context.theme.cardColor,
            ),
            child: Center(
              child: Container(
                width: 56.0,
                height: 56.0,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: context.theme.cardColor,
                  image: DecorationImage(
                    image: NetworkImage(
                      '$logoLink',
                    ),
                  ),
                ),
              ),
            ),
          ),
          Container(
            height: 100.0,
            padding: const EdgeInsets.only(
              top: 30.0,
              left: 15.0,
              right: 15.0,
            ),
            child: Column(
              children: [
                Text(
                  '$sponsorName',
                  style: TextStyle(
                    color: context.theme.backgroundColor == Colors.white
                        ? Colors.black
                        : Colors.white,
                    fontSize: 16.0,
                    fontWeight: FontWeight.w500,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  child: AutoSizeText(
                    '$title',
                    style: TextStyle(
                      color: context.theme.backgroundColor == Colors.white
                          ? Colors.black
                          : Colors.white,
                      fontSize: 13.0,
                      fontWeight: FontWeight.w500,
                    ),
                    textAlign: TextAlign.center,
                    maxLines: 1,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
