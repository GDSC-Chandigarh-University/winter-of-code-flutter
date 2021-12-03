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
      padding: EdgeInsets.symmetric(
        horizontal: screenWidth < 965 ? 40.0 : 80.0,
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
            'Nov 2021 - Feb 2022',
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
          screenWidth < 1365
              ? Center(
                  child: Wrap(
                    runAlignment: WrapAlignment.center,
                    alignment: WrapAlignment.center,
                    crossAxisAlignment: WrapCrossAlignment.end,
                    spacing: 10,
                    runSpacing: 10,
                    children: [
                      TimelineTile(
                        dateText: '1 Nov ‘21',
                        title: 'Program\nLaunch',
                        isMain: true,
                      ),
                      TimelineTile(
                        dateText: '3 Dec - 22 Dec ‘21',
                        title: 'Students\nPre-registration',
                        isMain: false,
                      ),
                      TimelineTile(
                        dateText: '5 Dec - 19 Dec ‘21',
                        title: 'Organization Application Period',
                        isMain: false,
                      ),
                      TimelineTile(
                        dateText: '22 Dec ‘21',
                        title: 'Organizations Announcement',
                        isMain: false,
                      ),
                      TimelineTile(
                        dateText: '23 Dec ‘21 - 6 Jan ‘22',
                        title: 'Student Application Period',
                        isMain: false,
                      ),
                      TimelineTile(
                        dateText: '12 Jan ‘22',
                        title: 'Student Projects Announcement',
                        isMain: false,
                      ),
                      TimelineTile(
                        dateText: '12 Jan - 15 Jan ‘22',
                        title: 'Community Bonding',
                        isMain: false,
                      ),
                      TimelineTile(
                        dateText: '16 Jan - 15 Feb ‘22',
                        title: 'Coding Period',
                        isMain: false,
                      ),
                      TimelineTile(
                        dateText: '1 Feb ‘21',
                        title: 'Mid-way Evaluations',
                        isMain: false,
                      ),
                      TimelineTile(
                        dateText: '16 Feb - 18 Feb ‘21',
                        title: 'Students Submit Code and Final Evaluation',
                        isMain: false,
                      ),
                      TimelineTile(
                        dateText: '19 Feb - 20 Feb ‘21',
                        title: 'Mentors Submit Final Evaluations',
                        isMain: false,
                      ),
                      TimelineTile(
                        dateText: '26 Feb ‘21',
                        title: 'Results\nAnnonced',
                        isMain: true,
                      ),
                    ],
                  ),
                )
              : Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    TimelineTile(
                      dateText: '1 Nov ‘21',
                      title: 'Program\nLaunch',
                      isMain: true,
                    ),
                    TimelineTile(
                      dateText: '1 Nov - 26 Nov ‘21',
                      title: 'Students\nPre-registration',
                      isMain: false,
                    ),
                    TimelineTile(
                      dateText: '13 Nov - 27 Nov ‘21',
                      title: 'Organization Application Period',
                      isMain: false,
                    ),
                    TimelineTile(
                      dateText: '1 Dec ‘21',
                      title: 'Organizations Announcement',
                      isMain: false,
                    ),
                    TimelineTile(
                      dateText: '2 Dec - 16 Dec ‘21',
                      title: 'Student Application Period',
                      isMain: false,
                    ),
                    TimelineTile(
                      dateText: '21 Dec ‘21',
                      title: 'Student Projects Announcement',
                      isMain: false,
                    ),
                    TimelineTile(
                      dateText: '22 Dec - 25 Dec ‘21',
                      title: 'Community Bonding',
                      isMain: false,
                    ),
                  ],
                ),
          screenWidth < 1365
              ? Container()
              : const SizedBox(
                  height: 15.0,
                ),
          screenWidth < 1365
              ? Container()
              : Container(
                  height: 9.0,
                  decoration: BoxDecoration(
                    color: context.theme.primaryColor,
                    borderRadius: BorderRadius.circular(
                      20.0,
                    ),
                  ),
                ),
          screenWidth < 1365
              ? Container()
              : const SizedBox(
                  height: 15.0,
                ),
          screenWidth < 1365
              ? Container()
              : Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SpaceTile(),
                    TimelineTile(
                      dateText: '26 Dec - 26 Jan ‘21',
                      title: 'Coding Period',
                      isMain: false,
                    ),
                    TimelineTile(
                      dateText: '4 Jan - 7 Jan ‘21',
                      title: 'Mid-way Evaluations',
                      isMain: false,
                    ),
                    TimelineTile(
                      dateText: '27 Jan - 29 Jan ‘21',
                      title: 'Students Submit Code and Final Evaluation',
                      isMain: false,
                    ),
                    TimelineTile(
                      dateText: '30 Jan - 31 Jan ‘21',
                      title: 'Mentors Submit Final Evaluations',
                      isMain: false,
                    ),
                    TimelineTile(
                      dateText: '4 Feb ‘21',
                      title: 'Results\nAnnonced',
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
