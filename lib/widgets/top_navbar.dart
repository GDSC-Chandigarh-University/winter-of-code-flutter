import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:get/get.dart';
import 'package:woc/screens/pre_register.dart';
import 'package:woc/utils/my_routes.dart';
import 'package:woc/widgets/text_container.dart';

class TopNavbar extends StatelessWidget {
  const TopNavbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      height: 64.0,
      width: screenWidth,
      color: ContextExtensionss(context).theme.backgroundColor,
      child: Row(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.popUntil(
                context,
                ModalRoute.withName('/'),
              );
            },
            child: Image.asset(
              ContextExtensionss(context).theme.backgroundColor == Colors.white
                  ? 'assets/woc_logo_light.png'
                  : 'assets/woc_logo_dark.png',
              height: 28.0,
            ),
          ),
          const SizedBox(
            width: 30.0,
          ),
          screenWidth > 965
              ? ModalRoute.of(context)?.settings.name != MyRoutes.about
                  ? NavBarButton(
                      title: 'About',
                      onTap: () {
                        Navigator.pushNamed(context, MyRoutes.about);
                      },
                    )
                  : Container()
              : Container(),
          screenWidth > 965
              ? ModalRoute.of(context)?.settings.name != MyRoutes.organisations
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
                                  )),
                            ),
                          ),
                        );
                      },
                    )
                  : Container()
              : Container(),
          screenWidth > 965
              ? ModalRoute.of(context)?.settings.name != MyRoutes.howItWorks
                  ? NavBarButton(
                      title: 'How it Works',
                      onTap: () {
                        Navigator.pushNamed(context, MyRoutes.howItWorks);
                      },
                    )
                  : Container()
              : Container(),
          screenWidth > 965
              ? ModalRoute.of(context)?.settings.name != MyRoutes.help
                  ? NavBarButton(
                      title: 'Help',
                      onTap: () {
                        Navigator.pushNamed(context, MyRoutes.help);
                      },
                    )
                  : Container()
              : Container(),
          screenWidth > 965
              ? ModalRoute.of(context)?.settings.name != MyRoutes.project
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
                  : Container()
              : Container(),
          screenWidth > 965
              ? ModalRoute.of(context)?.settings.name != MyRoutes.sponsors
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
                  : Container()
              : Container(),
          const Spacer(),
          NavBarButton(
            title: 'Apply Now',
            onTap: () {
              showDialog(
                context: context,
                builder: (context) => Dialog(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  backgroundColor: context.theme.backgroundColor == Colors.white
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
                            description: 'Opens on 13th Nov, 12 am IST.',
                            isDisabled: true,
                          ),
                          TextContainer(
                            title: 'Mentor Registrations',
                            description: 'Opens on 13th Nov, 12 am IST.',
                            isDisabled: true,
                          ),
                          TextContainer(
                            title: 'Student Registeration',
                            description: 'Opens on 2nd Dec, 12 am IST.',
                            isDisabled: true,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
          screenWidth < 965
              ? NavBarIconButton(
                  icon: Icon(
                    FeatherIcons.menu,
                    color: ContextExtensionss(context).theme.backgroundColor ==
                            Colors.white
                        ? Colors.black
                        : Colors.white,
                    size: 20.0,
                  ),
                  onTap: () {
                    Scaffold.of(context).openEndDrawer();
                  },
                )
              : Container(),
        ],
      ),
    );
  }
}

class NavBarButton extends StatelessWidget {
  String? title;
  void Function()? onTap;
  NavBarButton({Key? key, @required this.title, @required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          height: 64.0,
          padding: const EdgeInsets.symmetric(
            horizontal: 16.0,
          ),
          child: Center(
            child: Text(
              '$title',
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.w600,
                color: ContextExtensionss(context).theme.backgroundColor ==
                        Colors.white
                    ? Colors.black
                    : Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class NavBarIconButton extends StatelessWidget {
  Widget? icon;
  void Function()? onTap;
  NavBarIconButton({Key? key, @required this.icon, @required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: Container(
        height: 64.0,
        padding: const EdgeInsets.symmetric(
          horizontal: 0.0,
        ),
        child: Center(
          child: IconButton(
            icon: icon!,
            onPressed: onTap,
          ),
        ),
      ),
    );
  }
}
