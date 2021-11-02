import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:woc/utils/my_routes.dart';
import 'package:woc/widgets/text_container.dart';
import 'package:woc/widgets/youtube_video_container.dart';

class MainSection extends StatelessWidget {
  const MainSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Container(
      width: screenWidth,
      padding: EdgeInsets.symmetric(
        horizontal: screenWidth < 965 ? 40.0 : 80.0,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 140.0,
          ),
          Row(
            children: [
              Text(
                'Winter of Code ',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: screenWidth < 965 ? screenWidth * 0.09 : 90.0,
                  color: context.theme.backgroundColor == Colors.white
                      ? Colors.black
                      : Colors.white,
                ),
              ),
              Column(
                children: [
                  SizedBox(
                    height: screenWidth < 965 ? screenWidth * 0.03 : 45.0,
                  ),
                  Text(
                    'is here!',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: screenWidth < 965 ? screenWidth * 0.03 : 28.0,
                      color: context.theme.backgroundColor == Colors.white
                          ? Colors.black
                          : Colors.white,
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            child: AutoSizeText(
              '''A month long coding extravaganza for freshers
and open-source enthusiasts by
Google DSC Chandigarh University.''',
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 28.0,
                color: context.theme.backgroundColor == Colors.white
                    ? Colors.black
                    : Colors.white,
              ),
              textAlign: TextAlign.left,
              maxLines: 3,
            ),
          ),
          SizedBox(
            height: screenWidth < 965 ? screenWidth * 0.1 : 110.0,
          ),
          Wrap(
            spacing: 30.0,
            runSpacing: 30.0,
            children: [
              TextContainer(
                title: 'Know how it works',
                description:
                    '''Get complete steps to understand, how Google DSC CU Winter of Code works.
Know about it''',
                onTap: () {
                  Navigator.of(context).pushNamed(MyRoutes.howItWorks);
                },
              ),
              YoutubeVideoContainer(
                videoLink: 'https://www.youtube.com/embed/I9oxrD2C64I',
                viewType: 'mainVideo',
              ),
            ],
          ),
          const SizedBox(
            height: 55.0,
          ),
        ],
      ),
    );
  }
}
