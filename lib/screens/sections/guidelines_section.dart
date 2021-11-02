import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'dart:js' as js;

class GuidelinesSection extends StatelessWidget {
  const GuidelinesSection({Key? key}) : super(key: key);

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
            'Proposal Guidelines',
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
            'Format of a perfect proposal',
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 16.0,
              color: context.theme.backgroundColor == Colors.white
                  ? Colors.black
                  : Colors.white,
            ),
          ),
          const SizedBox(
            height: 61.0,
          ),
          Wrap(
            // crossAxisAlignment: CrossAxisAlignment.start,
            // mainAxisAlignment: MainAxisAlignment.start,
            runSpacing: 30.0,
            children: [
              Container(
                width: 396.0,
                height: 450.0,
                padding: const EdgeInsets.all(40.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.0),
                  color: context.theme.primaryColor,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const AutoSizeText(
                      'Sample Proposals',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 42.0,
                        color: Colors.white,
                      ),
                      maxLines: 2,
                    ),
                    const SizedBox(
                      height: 15.0,
                    ),
                    GestureDetector(
                      onTap: () {
                        js.context.callMethod(
                          'open',
                          [
                            'https://google.github.io/gsocguides/student/writing-a-proposal'
                          ],
                        );
                      },
                      child: const AutoSizeText(
                        'Project Proposal Format >',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 22.0,
                          color: Colors.white,
                        ),
                        maxLines: 2,
                      ),
                    ),
                    const SizedBox(
                      height: 15.0,
                    ),
                    GestureDetector(
                      onTap: () {
                        js.context.callMethod(
                          'open',
                          [
                            'https://google.github.io/gsocguides/student/proposal-example-1'
                          ],
                        );
                      },
                      child: const AutoSizeText(
                        'Proposal Example >',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 22.0,
                          color: Colors.white,
                        ),
                        maxLines: 2,
                      ),
                    ),
                    const SizedBox(
                      height: 15.0,
                    ),
                    GestureDetector(
                      onTap: () {
                        js.context.callMethod(
                          'open',
                          ['https://github.com/saketkc/fos-proposals'],
                        );
                      },
                      child: const AutoSizeText(
                        'Previous years’ GSoC selected proposals >',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 22.0,
                          color: Colors.white,
                        ),
                        maxLines: 2,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                width: 54.0,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '''A good proposal is well formatted and easy to read for the reviewers.\nIt must be precise and contain relevant details while avoiding any\nextra information.

You must clearly take care of the following points in your proposal -

    • Description 
    • Use Cases 
    • Impact 
    • Timelines 
    • Context''',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 20.0,
                      color: context.theme.backgroundColor == Colors.white
                          ? Colors.black
                          : Colors.white,
                    ),
                  ),
                  const SizedBox(
                    height: 36.0,
                  ),
                  Text(
                    '''While describing the timeline, be very clear about specific goals you will be completing\nduring this one month in a weekly fashion.  
While we encourage fresh and innovative ideas from you people, it's upto you to make sure\nthat you select a realistic goal considering the time duration of one month.''',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 14.0,
                      color: context.theme.backgroundColor == Colors.white
                          ? Colors.black
                          : Colors.white,
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 91.0,
          ),
        ],
      ),
    );
  }
}
