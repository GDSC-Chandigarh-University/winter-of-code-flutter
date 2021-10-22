import 'package:flutter/material.dart';
import 'package:get/get.dart';
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
      padding: const EdgeInsets.symmetric(
        horizontal: 80.0,
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
                  fontSize: 90.0,
                  color: context.theme.backgroundColor == Colors.white
                      ? Colors.black
                      : Colors.white,
                ),
              ),
              Column(
                children: [
                  const SizedBox(
                    height: 45.0,
                  ),
                  Text(
                    'is here!',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 28.0,
                      color: context.theme.backgroundColor == Colors.white
                          ? Colors.black
                          : Colors.white,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Text(
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
          ),
          const SizedBox(
            height: 110.0,
          ),
          Row(
            children: [
              TextContainer(
                title: 'Know how it works',
                description: '''Get complete steps to understand,
how Google DSC CU Winter of Code works.''',
                link: 'Know about it',
              ),
              const SizedBox(
                width: 30.0,
              ),
              YoutubeVideoContainer(
                videoLink: 'https://www.youtube.com/embed/Jqf52nThBt0',
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
