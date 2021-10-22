import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:woc/widgets/sponsors_tile.dart';

class SponsorsSection extends StatelessWidget {
  const SponsorsSection({Key? key}) : super(key: key);

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
            height: 10.0,
          ),
          Text(
            'Sponsors',
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
            'Become our Sponsor >',
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
          Wrap(
            runSpacing: 20.0,
            children: const [
              SponsorsTile(),
              SponsorsTile(),
              SponsorsTile(),
              SponsorsTile(),
              SponsorsTile(),
              SponsorsTile(),
              SponsorsTile(),
            ],
          ),
          const SizedBox(
            height: 67.0,
          ),
        ],
      ),
    );
  }
}
