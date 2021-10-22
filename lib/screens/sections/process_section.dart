import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:woc/widgets/process_tile.dart';

class ProcessSection extends StatelessWidget {
  const ProcessSection({Key? key}) : super(key: key);

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
            height: 30.0,
          ),
          Text(
            'How it Works',
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
            'Learn about the process',
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 16.0,
              color: context.theme.backgroundColor == Colors.white
                  ? Colors.black
                  : Colors.white,
            ),
          ),
          const SizedBox(
            height: 68.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ProcessTile(
                number: 1,
                title: 'Apply',
                description:
                    'Interested Students propose a project to work on.',
              ),
              ProcessTile(
                number: 2,
                title: 'Code',
                description:
                    'Accepted Students codes under the guidance of mentor.',
              ),
              ProcessTile(
                number: 3,
                title: 'Share',
                description: 'Submit your code for the world to see!',
              ),
            ],
          ),
          const SizedBox(
            height: 41.0,
          ),
          RichText(
            text: TextSpan(
              text: 'Still have questions? Visit our ',
              style: TextStyle(
                color: context.theme.backgroundColor == Colors.white
                    ? Colors.black
                    : Colors.white,
                fontWeight: FontWeight.w500,
                fontSize: 16.0,
              ),
              children: [
                TextSpan(
                  text: 'Help Page',
                  style: TextStyle(
                    color: context.theme.backgroundColor == Colors.white
                        ? const Color(0xff4285F4)
                        : const Color(0xff8AB4F8),
                    fontWeight: FontWeight.w500,
                    fontSize: 16.0,
                  ),
                ),
                TextSpan(
                  text: ' for\nmore details.',
                  style: TextStyle(
                    color: context.theme.backgroundColor == Colors.white
                        ? Colors.black
                        : Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 16.0,
                  ),
                ),
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
