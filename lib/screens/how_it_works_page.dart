import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:woc/screens/sections/footer_section.dart';
import 'package:woc/screens/sections/process_section.dart';
import 'package:woc/utils/my_routes.dart';
import 'package:woc/widgets/image_container.dart';
import 'package:woc/widgets/process_tile.dart';
import 'package:woc/widgets/text_container.dart';
import 'package:woc/widgets/themed_button.dart';
import 'package:woc/widgets/top_navbar.dart';

class HowItWorksPage extends StatelessWidget {
  const HowItWorksPage({Key? key}) : super(key: key);

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
                              'How',
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
                                  ' it works?',
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
                          '''Know about the process\nfor Students, Mentors, and\nOrganizations of this program.''',
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
                          'Students',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 28.0,
                            color: context.theme.backgroundColor == Colors.white
                                ? Colors.black
                                : Colors.white,
                          ),
                        ),
                        const SizedBox(
                          height: 40.0,
                        ),
                        Wrap(
                          spacing: 40.0,
                          runSpacing: 40.0,
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
                          height: 40.0,
                        ),
                        Text(
                          '''Students contact the mentor organizations they want to work with and write up a project proposal for the winter. If accepted, students spend a few days integrating with their organizations prior to the start of coding. Students then have 1 month to code, meeting the deadlines agreed upon with their mentors.''',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 18.0,
                            color: context.theme.backgroundColor == Colors.white
                                ? Colors.black
                                : Colors.white,
                          ),
                        ),
                        const SizedBox(
                          height: 70.0,
                        ),
                        Text(
                          'Organizations',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 28.0,
                            color: context.theme.backgroundColor == Colors.white
                                ? Colors.black
                                : Colors.white,
                          ),
                        ),
                        const SizedBox(
                          height: 40.0,
                        ),
                        Wrap(
                          spacing: 40.0,
                          runSpacing: 40.0,
                          children: [
                            ProcessTile(
                              number: 1,
                              title: 'List project',
                              description:
                                  'Make your open-sourced project list in WoC.',
                            ),
                            ProcessTile(
                              number: 2,
                              title: 'Select proposal',
                              description:
                                  'Accept innovative and strong, students’ proposals.',
                            ),
                            ProcessTile(
                              number: 3,
                              title: 'Get contributions',
                              description:
                                  'Have students to contribute to your project.',
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 40.0,
                        ),
                        Text(
                          '''Open source projects apply to be mentor organizations. Once accepted, organizations discuss possible ideas with students and then decide on the proposals they wish to mentor for the summer. They provide mentors to help guide each student through the program.''',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 18.0,
                            color: context.theme.backgroundColor == Colors.white
                                ? Colors.black
                                : Colors.white,
                          ),
                        ),
                        const SizedBox(
                          height: 70.0,
                        ),
                        ThemedButton(
                          onPressed: () {
                            showDialog(
                              context: context,
                              builder: (context) => Dialog(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12.0),
                                ),
                                backgroundColor:
                                    context.theme.backgroundColor ==
                                            Colors.white
                                        ? context.theme.backgroundColor
                                        : context.theme.backgroundColor,
                                child: SingleChildScrollView(
                                  child: Container(
                                    padding: const EdgeInsets.all(40.0),
                                    child: Wrap(
                                      runSpacing: 30.0,
                                      spacing: 30.0,
                                      children: [
                                        TextContainer(
                                          title: 'Student Pre-registration',
                                          description:
                                              'Pre-register now to avail additional benefits.\nFill the form >',
                                          onTap: () {
                                            Navigator.pop(context);
                                            Navigator.pushNamed(
                                              context,
                                              MyRoutes.preRegister,
                                            );
                                          },
                                        ),
                                        TextContainer(
                                          title: 'Organization Registration',
                                          description:
                                              'Opens on 13th Nov, 12 am IST.',
                                          isDisabled: true,
                                        ),
                                        TextContainer(
                                          title: 'Mentor Registrations',
                                          description:
                                              'Opens on 13th Nov, 12 am IST.',
                                          isDisabled: true,
                                        ),
                                        TextContainer(
                                          title: 'Student Registeration',
                                          description:
                                              'Opens on 2nd Dec, 12 am IST.',
                                          isDisabled: true,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            );
                          },
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
