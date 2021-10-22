import 'package:flutter/material.dart';
import 'package:woc/screens/sections/about_section.dart';
import 'package:woc/screens/sections/footer_section.dart';
import 'package:woc/screens/sections/guidelines_section.dart';
import 'package:woc/screens/sections/main_section.dart';
import 'package:woc/screens/sections/process_section.dart';
import 'package:woc/screens/sections/sponsors_section.dart';
import 'package:woc/screens/sections/timeline_section.dart';
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
    return Scaffold(
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
