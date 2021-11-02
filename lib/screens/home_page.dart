import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:woc/screens/sections/about_section.dart';
import 'package:woc/screens/sections/footer_section.dart';
import 'package:woc/screens/sections/guidelines_section.dart';
import 'package:woc/screens/sections/main_section.dart';
import 'package:woc/screens/sections/process_section.dart';
import 'package:woc/screens/sections/sponsors_section.dart';
import 'package:woc/screens/sections/timeline_section.dart';
import 'package:woc/utils/my_routes.dart';
import 'package:woc/widgets/text_container.dart';
import 'package:woc/widgets/top_navbar.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  List<Widget> sections = [
    const MainSection(),
    const TimelineSection(),
    const SponsorsSection(),
    const AboutSection(),
    const ProcessSection(),
    const GuidelinesSection(),
    const FooterSection(),
  ];

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
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
                      ? 'assets/woc_logo_light.png'
                      : 'assets/woc_logo_dark.png',
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
                children: sections,
              ),
            ),
          ),
          const TopNavbar(),
        ],
      ),
    );
  }
}
