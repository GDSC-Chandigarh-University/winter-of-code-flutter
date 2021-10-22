import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:woc/screens/sections/footer_section.dart';
import 'package:woc/widgets/image_container.dart';
import 'package:woc/widgets/themed_button.dart';
import 'package:woc/widgets/top_navbar.dart';
import 'package:woc/widgets/youtube_video_container.dart';

class HelpPage extends StatelessWidget {
  const HelpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: context.theme.backgroundColor,
      body: Stack(
        children: [
          Scrollbar(
            isAlwaysShown: false,
            thickness: 6.0,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    width: screenWidth,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 80.0,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 80.0,
                        ),
                        Row(
                          children: [
                            Text(
                              'Help ',
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 90.0,
                                color: context.theme.backgroundColor ==
                                        Colors.white
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
                                  'if you need',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 28.0,
                                    color: context.theme.backgroundColor ==
                                            Colors.white
                                        ? Colors.black
                                        : Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Text(
                          '''In case of any query consider asking us
through given below channels.''',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 28.0,
                            color: context.theme.backgroundColor == Colors.white
                                ? Colors.black
                                : Colors.white,
                          ),
                        ),
                        const SizedBox(
                          height: 70.0,
                        ),
                        Text(
                          '''Email: dsc@cumail.in
Discord Server:
Slack Workspace:
Instagram: https://www.instagram.com/gdsc.cu
Twitter: https://www.twitter.com/gdsc_cu''',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 18.0,
                            color: context.theme.backgroundColor == Colors.white
                                ? Colors.black
                                : Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 91.0,
                  ),
                  const FooterSection(),
                ],
              ),
            ),
          ),
          const TopNavbar(),
        ],
      ),
    );
  }
}
