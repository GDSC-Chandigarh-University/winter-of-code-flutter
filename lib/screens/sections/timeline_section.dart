import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:woc/widgets/timeline_tile.dart';

class TimelineSection extends StatelessWidget {
  const TimelineSection({Key? key}) : super(key: key);

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
        children: <Widget>[
          Divider(
            thickness: 1.5,
            color: context.theme.backgroundColor == Colors.white
                ? Colors.black
                : Colors.white,
          ),
          const SizedBox(
            height: 87.0,
          ),
          Text(
            'Timeline',
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
            'Oct 2021 - Jan 2022',
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 16.0,
              color: context.theme.backgroundColor == Colors.white
                  ? Colors.black
                  : Colors.white,
            ),
          ),
          const SizedBox(
            height: 60.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              TimelineTile(
                dateText: '9 Oct ‘21',
                title: 'Intro Talk',
                isMain: true,
              ),
              TimelineTile(
                dateText: '10 Oct - 25 Oct ‘21',
                title: 'Organization Application Period',
                isMain: false,
              ),
              TimelineTile(
                dateText: '28 Oct ‘21',
                title: 'Organizations Annouced',
                isMain: false,
              ),
              TimelineTile(
                dateText: '29 Oct - 15 Nov ‘21',
                title: 'Student Application Period',
                isMain: false,
              ),
              TimelineTile(
                dateText: '15 Nov - 25 Nov ‘21',
                title: 'Application Review Period',
                isMain: false,
              ),
              TimelineTile(
                dateText: '26 Nov ‘21',
                title: 'Student Projects Announced',
                isMain: false,
              ),
              TimelineTile(
                dateText: '27 Nov - 6 Dec ‘21',
                title: 'Community Bonding',
                isMain: false,
              ),
            ],
          ),
          const SizedBox(
            height: 15.0,
          ),
          Container(
            height: 9.0,
            decoration: BoxDecoration(
              color: context.theme.primaryColor,
              borderRadius: BorderRadius.circular(
                20.0,
              ),
            ),
          ),
          const SizedBox(
            height: 15.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SpaceTile(),
              TimelineTile(
                dateText: '28 Oct ‘21',
                title: 'Organizations Annouced',
                isMain: false,
              ),
              TimelineTile(
                dateText: '29 Oct - 15 Nov ‘21',
                title: 'Student Application Period',
                isMain: false,
              ),
              TimelineTile(
                dateText: '15 Nov - 25 Nov ‘21',
                title: 'Application Review Period',
                isMain: false,
              ),
              TimelineTile(
                dateText: '26 Nov ‘21',
                title: 'Student Projects Announced',
                isMain: false,
              ),
              TimelineTile(
                dateText: '27 Nov - 6 Dec ‘21',
                title: 'Community Bonding',
                isMain: true,
              ),
              const SpaceTile(),
            ],
          ),
          const SizedBox(
            height: 79.0,
          ),
        ],
      ),
    );
  }
}
