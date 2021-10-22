import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:woc/utils/my_routes.dart';

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
                  ? 'woc_logo_light.png'
                  : 'woc_logo_dark.png',
              height: 28.0,
            ),
          ),
          const SizedBox(
            width: 30.0,
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
                    Navigator.pushNamed(context, MyRoutes.about);
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
                    Navigator.pushNamed(context, MyRoutes.about);
                  },
                )
              : Container(),
          ModalRoute.of(context)?.settings.name != MyRoutes.sponsors
              ? NavBarButton(
                  title: 'Sponsers',
                  onTap: () {
                    Navigator.pushNamed(context, MyRoutes.about);
                  },
                )
              : Container(),
          const Spacer(),
          NavBarButton(
            title: 'Apply Now',
            onTap: () {},
          ),
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
    return GestureDetector(
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
    );
  }
}
