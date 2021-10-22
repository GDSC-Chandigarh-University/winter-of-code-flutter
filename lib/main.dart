import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:woc/screens/about_page.dart';
import 'package:woc/screens/help_page.dart';
import 'package:woc/screens/home_page.dart';
import 'package:url_strategy/url_strategy.dart';
import 'package:woc/screens/how_it_works_page.dart';
import 'package:woc/utils/my_routes.dart';

void main() {
  setPathUrlStrategy();
  runApp(const WoC());
}

class WoC extends StatelessWidget {
  const WoC({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData.light().copyWith(
        backgroundColor: Colors.white,
        primaryColor: const Color(0xff4285F4),
        cardColor: const Color(0xffF8F9FA),
        textTheme: GoogleFonts.poppinsTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
      darkTheme: ThemeData.dark().copyWith(
        backgroundColor: const Color(0xff1F2124),
        primaryColor: const Color(0xff4285F4),
        cardColor: const Color(0xffF8F9FA),
        textTheme: GoogleFonts.poppinsTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => HomePage(),
        MyRoutes.about: (context) => const AboutPage(),
        MyRoutes.howItWorks: (context) => const HowItWorksPage(),
        MyRoutes.help: (context) => const HelpPage(),
      },
    );
  }
}
