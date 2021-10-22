import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:woc/screens/sections/footer_section.dart';
import 'package:woc/screens/sections/process_section.dart';
import 'package:woc/widgets/image_container.dart';
import 'package:woc/widgets/process_tile.dart';
import 'package:woc/widgets/themed_button.dart';
import 'package:woc/widgets/top_navbar.dart';

class HowItWorksPage extends StatelessWidget {
  const HowItWorksPage({Key? key}) : super(key: key);

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
                              'How',
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
                                  ' it Works?',
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
                          '''This subheading will be holding at most
three catchy lines about the boring\ncontent written below.''',
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
                              description:
                                  'Submit your code for the world to see!',
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 70.0,
                        ),
                        Text(
                          '''Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Sit amet dictum sit amet justo donec enim diam. Fermentum posuere urna nec tincidunt praesent semper feugiat nibh. Pharetra convallis posuere morbi leo urna. Morbi tincidunt ornare massa eget egestas. Egestas dui id ornare arcu odio ut. Id aliquet lectus proin nibh nisl condimentum. Venenatis tellus in metus vulputate eu scelerisque felis. Felis imperdiet proin fermentum leo vel orci porta non pulvinar. Faucibus interdum posuere lorem ipsum dolor sit amet consectetur adipiscing.

Dis parturient montes nascetur ridiculus mus mauris. Viverra nam libero justo laoreet sit amet cursus sit amet. Donec ac odio tempor orci. Id cursus metus aliquam eleifend. Pharetra diam sit amet nisl. Aliquam ultrices sagittis orci a scelerisque purus semper eget duis. In massa tempor nec feugiat nisl pretium. Sagittis eu volutpat odio facilisis mauris sit amet massa. Varius quam quisque id diam vel quam elementum. Tellus pellentesque eu tincidunt tortor. Iaculis urna id volutpat lacus laoreet non curabitur gravida arcu. Nisl nisi scelerisque eu ultrices.

Adipiscing commodo elit at imperdiet dui accumsan sit. Morbi leo urna molestie at elementum eu facilisis. Nulla porttitor massa id neque aliquam vestibulum morbi blandit cursus. Lorem sed risus ultricies tristique nulla aliquet enim tortor. Nam libero justo laoreet sit. Eget aliquet nibh praesent tristique. Facilisis volutpat est velit egestas dui id ornare arcu odio. Est ante in nibh mauris. Cursus sit amet dictum sit amet justo donec enim. Nunc sed blandit libero volutpat. Facilisis leo vel fringilla est ullamcorper eget nulla.''',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 18.0,
                            color: context.theme.backgroundColor == Colors.white
                                ? Colors.black
                                : Colors.white,
                          ),
                        ),
                        const SizedBox(
                          height: 40.0,
                        ),
                        ThemedButton(
                          onPressed: () {},
                          title: 'Apply Now',
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
