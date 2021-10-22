import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SponsorsTile extends StatelessWidget {
  const SponsorsTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180.0,
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
                  image: const DecorationImage(
                    image: NetworkImage(
                      'https://cpng.pikpng.com/pngl/s/546-5462793_store-coming-soon-transparent-coming-soon-banner-clipart.png',
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
            child: Text(
              'Coming Soon',
              style: TextStyle(
                color: context.theme.backgroundColor == Colors.white
                    ? Colors.black
                    : Colors.white,
                fontSize: 16.0,
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
