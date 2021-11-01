import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:woc/widgets/image_container.dart';
import 'package:woc/widgets/text_container.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Container(
      width: screenWidth,
      padding: EdgeInsets.symmetric(
        horizontal: screenWidth < 965 ? 40.0 : 80.0,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 10.0,
          ),
          Text(
            'About',
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 28.0,
              color: context.theme.backgroundColor == Colors.white
                  ? Colors.black
                  : Colors.white,
            ),
          ),
          const SizedBox(
            height: 4.0,
          ),
          Text(
            'Know what Google DSC CU WoC is',
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 16.0,
              color: context.theme.backgroundColor == Colors.white
                  ? Colors.black
                  : Colors.white,
            ),
          ),
          const SizedBox(
            height: 61.0,
          ),
          SizedBox(
            width: screenWidth < 965 ? screenWidth - 80 : screenWidth - 160,
            child: Wrap(
              spacing: 30.0,
              runSpacing: 30.0,
              children: [
                TextContainer(
                    title: 'Have a project?',
                    description: '''Organizations can get their open-sourced
projects completed, by registering to
GDSC CU WoC.'''),
                ImageContainer(
                  imageUrl: 'https://i.ibb.co/2FB6BhD/Group-28.png',
                ),
                ImageContainer(
                  imageUrl: 'https://i.ibb.co/5MDWywp/Group-27.png',
                ),
                TextContainer(
                    title: 'Want to contribute?',
                    description: '''Students can register themselves to work
and contribute to the open-sources projects
by organizations.'''),
              ],
            ),
          ),
          const SizedBox(
            height: 81.0,
          ),
        ],
      ),
    );
  }
}
