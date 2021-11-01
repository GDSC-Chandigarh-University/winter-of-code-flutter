import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:woc/screens/sections/footer_section.dart';
import 'package:woc/utils/my_routes.dart';
import 'package:woc/widgets/image_container.dart';
import 'package:woc/widgets/text_container.dart';
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
      endDrawer: Drawer(
        child: Container(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 20.0,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.popUntil(
                    context,
                    ModalRoute.withName('/'),
                  );
                },
                child: Image.asset(
                  ContextExtensionss(context).theme.backgroundColor ==
                          Colors.white
                      ? 'woc_logo_light.png'
                      : 'woc_logo_dark.png',
                  height: 28.0,
                ),
              ),
              const SizedBox(
                height: 30.0,
              ),
              ModalRoute.of(context)?.settings.name != MyRoutes.about
                  ? NavBarButton(
                      title: 'About',
                      onTap: () {
                        Navigator.pushNamed(context, MyRoutes.about);
                      },
                    )
                  : Container(),
              ModalRoute.of(context)?.settings.name != MyRoutes.organisations
                  ? NavBarButton(
                      title: 'Organisations',
                      onTap: () {
                        showDialog(
                          context: context,
                          builder: (context) => Dialog(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                            backgroundColor:
                                context.theme.backgroundColor == Colors.white
                                    ? context.theme.backgroundColor
                                    : context.theme.backgroundColor,
                            child: SingleChildScrollView(
                              child: Container(
                                padding: const EdgeInsets.all(40.0),
                                child: Center(
                                  child: TextContainer(
                                    title: 'Organizations,',
                                    description:
                                        'mentors, and projects\nwill be announced on\n1 Dec 2021',
                                    isDisabled: true,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                    )
                  : Container(),
              ModalRoute.of(context)?.settings.name != MyRoutes.howItWorks
                  ? NavBarButton(
                      title: 'How it Works',
                      onTap: () {
                        Navigator.pushNamed(context, MyRoutes.howItWorks);
                      },
                    )
                  : Container(),
              ModalRoute.of(context)?.settings.name != MyRoutes.help
                  ? NavBarButton(
                      title: 'Help',
                      onTap: () {
                        Navigator.pushNamed(context, MyRoutes.help);
                      },
                    )
                  : Container(),
              ModalRoute.of(context)?.settings.name != MyRoutes.project
                  ? NavBarButton(
                      title: 'Projects',
                      onTap: () {
                        showDialog(
                          context: context,
                          builder: (context) => Dialog(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                            backgroundColor:
                                context.theme.backgroundColor == Colors.white
                                    ? context.theme.backgroundColor
                                    : context.theme.backgroundColor,
                            child: SingleChildScrollView(
                              child: Container(
                                padding: const EdgeInsets.all(40.0),
                                child: Center(
                                  child: TextContainer(
                                    title: 'Projects,',
                                    description:
                                        'along with organizations,\nwill be announced on\n1 Dec 2021',
                                    isDisabled: true,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                    )
                  : Container(),
              ModalRoute.of(context)?.settings.name != MyRoutes.sponsors
                  ? NavBarButton(
                      title: 'Sponsors',
                      onTap: () {
                        showDialog(
                          context: context,
                          builder: (context) => Dialog(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                            backgroundColor:
                                context.theme.backgroundColor == Colors.white
                                    ? context.theme.backgroundColor
                                    : context.theme.backgroundColor,
                            child: SingleChildScrollView(
                              child: Container(
                                padding: const EdgeInsets.all(40.0),
                                child: Center(
                                  child: TextContainer(
                                    title: 'Become our Sponser,',
                                    description:
                                        'drop us a mail at dsc@cumail.in, we\'ll reach back to you within a day.',
                                    isDisabled: true,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                    )
                  : Container(),
              const Spacer(),
            ],
          ),
        ),
      ),
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
                    padding: EdgeInsets.symmetric(
                      horizontal: screenWidth < 965 ? 40.0 : 80.0,
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
                                fontSize: screenWidth < 965
                                    ? screenWidth * 0.09
                                    : 90.0,
                                color: context.theme.backgroundColor ==
                                        Colors.white
                                    ? Colors.black
                                    : Colors.white,
                              ),
                            ),
                            Column(
                              children: [
                                SizedBox(
                                  height: screenWidth < 965
                                      ? screenWidth * 0.03
                                      : 45.0,
                                ),
                                Text(
                                  'if you need',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: screenWidth < 965
                                        ? screenWidth * 0.03
                                        : 28.0,
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
                        AutoSizeText(
                          '''In case of any query consider asking us
through given below channels.''',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 28.0,
                            color: context.theme.backgroundColor == Colors.white
                                ? Colors.black
                                : Colors.white,
                          ),
                          maxLines: 4,
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
