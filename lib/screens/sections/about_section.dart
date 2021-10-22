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
      padding: const EdgeInsets.symmetric(
        horizontal: 80.0,
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
          Row(
            children: [
              TextContainer(
                  title: 'Have a project?',
                  description: '''Organizations can get their open-sourced
projects completed, by registering to
GDSC CU WoC.'''),
              const SizedBox(
                width: 30.0,
              ),
              const ImageContainer(),
            ],
          ),
          const SizedBox(
            height: 30.0,
          ),
          Row(
            children: [
              const ImageContainer(),
              const SizedBox(
                width: 30.0,
              ),
              TextContainer(
                  title: 'Want to contribute?',
                  description: '''Students can register themselves to work
and contribute to the open-sources projects
by organizations.'''),
            ],
          ),
          const SizedBox(
            height: 81.0,
          ),
        ],
      ),
    );
  }
}
