import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:woc/widgets/sponsors_tile.dart';
import 'package:woc/widgets/text_container.dart';

class SponsorsSection extends StatelessWidget {
  const SponsorsSection({Key? key}) : super(key: key);

  Widget sponsorWrap(screenWidth) {
    return Wrap(
      runSpacing: 20.0,
      alignment: WrapAlignment.center,
      children: [
        SponsorsTile(
          title: 'Platinum Sponsor',
          logoLink: 'https://i.ibb.co/dtzS0xb/loader.png',
          sponsorName: 'Chandigarh University',
        ),
        SponsorsTile(
          title: 'Gold Sponsor',
          logoLink:
              'https://i.ibb.co/RczCz5P/576f44-5e9ea38a9c60410c8a4938510ca4b7f1-mv2.png',
          sponsorName: 'Newton School',
        ),
        SponsorsTile(
          title: '',
          logoLink: 'https://i.ibb.co/FVWbJ2h/Favicon.png',
          sponsorName: 'Comming Soon',
        ),
        SponsorsTile(
          title: '',
          logoLink: 'https://i.ibb.co/FVWbJ2h/Favicon.png',
          sponsorName: 'Comming Soon',
        ),
        screenWidth < 965
            ? Container()
            : SponsorsTile(
                title: '',
                logoLink: 'https://i.ibb.co/FVWbJ2h/Favicon.png',
                sponsorName: 'Comming Soon',
              ),
        screenWidth < 965
            ? Container()
            : SponsorsTile(
                title: '',
                logoLink: 'https://i.ibb.co/FVWbJ2h/Favicon.png',
                sponsorName: 'Comming Soon',
              ),
        screenWidth < 965
            ? Container()
            : SponsorsTile(
                title: '',
                logoLink: 'https://i.ibb.co/FVWbJ2h/Favicon.png',
                sponsorName: 'Comming Soon',
              ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Container(
      width: screenWidth,
      padding: EdgeInsets.symmetric(
        horizontal: screenWidth < 965 ? 40.0 : 80.0,
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
          InkWell(
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
            child: Text(
              'Become our Sponsor >',
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 16.0,
                color: context.theme.backgroundColor == Colors.white
                    ? Colors.black
                    : Colors.white,
              ),
            ),
          ),
          const SizedBox(
            height: 68.0,
          ),
          screenWidth < 1365
              ? Center(child: sponsorWrap(screenWidth))
              : sponsorWrap(screenWidth),
          const SizedBox(
            height: 67.0,
          ),
        ],
      ),
    );
  }
}
