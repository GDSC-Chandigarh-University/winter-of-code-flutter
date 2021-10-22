import 'package:flutter/material.dart';
import 'package:get/get.dart';
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
              Container(
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
                  children: const [
                    Text(
                      'Know how it works',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 42.0,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      '''Get complete steps to understand,
how Google DSC CU Winter of Code works.''',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 22.0,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      'Know about it',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 22.0,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
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
