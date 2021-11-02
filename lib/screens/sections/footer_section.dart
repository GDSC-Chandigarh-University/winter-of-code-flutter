import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:get/get.dart';
import 'dart:js' as js;

class FooterSection extends StatelessWidget {
  const FooterSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Container(
      width: screenWidth,
      height: 247.0,
      color: const Color(0xff1F2124),
      padding: EdgeInsets.symmetric(
        horizontal: screenWidth < 965 ? 32.0 : 72.0,
        vertical: screenWidth < 965 ? 20.0 : 40.0,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                'assets/bnw_logo.png',
                height: 32.0,
              ),
              IconButton(
                onPressed: () {
                  if (Get.isDarkMode) {
                    Get.changeThemeMode(ThemeMode.light);
                  } else {
                    Get.changeThemeMode(ThemeMode.dark);
                  }
                },
                icon: const Icon(
                  FeatherIcons.sun,
                  color: Color(0xffA4A4A4),
                  size: 32.0,
                ),
              ),
            ],
          ),
          const Spacer(),
          screenWidth < 965
              ? Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        GestureDetector(
                          onTap: () {
                            js.context.callMethod(
                              'open',
                              [
                                'https://www.freeprivacypolicy.com/live/ffee4171-c55c-4111-b7b5-5a34ea2ecf6d'
                              ],
                            );
                          },
                          child: AutoSizeText(
                            'Privacy Policies',
                            style: TextStyle(
                              color: const Color(0xffA4A4A4),
                              fontSize: screenWidth < 500 ? 14 : 18.0,
                              fontWeight: FontWeight.w500,
                            ),
                            maxLines: 1,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            js.context.callMethod(
                              'open',
                              [
                                'https://developers.google.com/community-guidelines'
                              ],
                            );
                          },
                          child: AutoSizeText(
                            'Community guildelines',
                            style: TextStyle(
                              color: const Color(0xffA4A4A4),
                              fontSize: screenWidth < 500 ? 14 : 18.0,
                              fontWeight: FontWeight.w500,
                            ),
                            maxLines: 1,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            js.context.callMethod(
                              'open',
                              ['https://8x7nah30dlu.typeform.com/to/jL58jBjK'],
                            );
                          },
                          child: AutoSizeText(
                            'FAQ',
                            style: TextStyle(
                              color: const Color(0xffA4A4A4),
                              fontSize: screenWidth < 500 ? 12 : 18.0,
                              fontWeight: FontWeight.w500,
                            ),
                            maxLines: 1,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                          onPressed: () {
                            js.context.callMethod(
                              'open',
                              ['https://twitter.com/gdsc_cu/'],
                            );
                          },
                          icon: const Icon(
                            FeatherIcons.twitter,
                            color: Color(0xffA4A4A4),
                            size: 24.0,
                          ),
                        ),
                        const SizedBox(
                          width: 20.0,
                        ),
                        IconButton(
                          onPressed: () {
                            js.context.callMethod(
                              'open',
                              ['https://instagram.com/gdsc.cu/'],
                            );
                          },
                          icon: const Icon(
                            FeatherIcons.instagram,
                            color: Color(0xffA4A4A4),
                            size: 24.0,
                          ),
                        ),
                        const SizedBox(
                          width: 20.0,
                        ),
                        IconButton(
                          onPressed: () {
                            js.context.callMethod(
                              'open',
                              ['https://www.linkedin.com/company/dsccu/'],
                            );
                          },
                          icon: const Icon(
                            FeatherIcons.linkedin,
                            color: Color(0xffA4A4A4),
                            size: 24.0,
                          ),
                        ),
                        const SizedBox(
                          width: 20.0,
                        ),
                        IconButton(
                          onPressed: () {
                            js.context.callMethod(
                              'open',
                              [
                                'https://www.youtube.com/channel/UCv68rl5yx1evXXn3YUsDwew'
                              ],
                            );
                          },
                          icon: const Icon(
                            FeatherIcons.youtube,
                            color: Color(0xffA4A4A4),
                            size: 24.0,
                          ),
                        ),
                      ],
                    ),
                  ],
                )
              : Container(),
          screenWidth < 965
              ? Container()
              : Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        js.context.callMethod(
                          'open',
                          [
                            'https://www.freeprivacypolicy.com/live/ffee4171-c55c-4111-b7b5-5a34ea2ecf6d'
                          ],
                        );
                      },
                      child: const Text(
                        'Privacy Policies',
                        style: TextStyle(
                          color: Color(0xffA4A4A4),
                          fontSize: 18.0,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 40.0,
                    ),
                    GestureDetector(
                      onTap: () {
                        js.context.callMethod(
                          'open',
                          [
                            'https://developers.google.com/community-guidelines'
                          ],
                        );
                      },
                      child: const Text(
                        'Community guildelines',
                        style: TextStyle(
                          color: Color(0xffA4A4A4),
                          fontSize: 18.0,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 40.0,
                    ),
                    GestureDetector(
                      onTap: () {
                        js.context.callMethod(
                          'open',
                          ['https://8x7nah30dlu.typeform.com/to/jL58jBjK'],
                        );
                      },
                      child: const Text(
                        'FAQ',
                        style: TextStyle(
                          color: Color(0xffA4A4A4),
                          fontSize: 18.0,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    const Spacer(),
                    IconButton(
                      onPressed: () {
                        js.context.callMethod(
                          'open',
                          ['https://twitter.com/gdsc_cu/'],
                        );
                      },
                      icon: const Icon(
                        FeatherIcons.twitter,
                        color: Color(0xffA4A4A4),
                        size: 24.0,
                      ),
                    ),
                    const SizedBox(
                      width: 20.0,
                    ),
                    IconButton(
                      onPressed: () {
                        js.context.callMethod(
                          'open',
                          ['https://instagram.com/gdsc.cu/'],
                        );
                      },
                      icon: const Icon(
                        FeatherIcons.instagram,
                        color: Color(0xffA4A4A4),
                        size: 24.0,
                      ),
                    ),
                    const SizedBox(
                      width: 20.0,
                    ),
                    IconButton(
                      onPressed: () {
                        js.context.callMethod(
                          'open',
                          ['https://www.linkedin.com/company/dsccu/'],
                        );
                      },
                      icon: const Icon(
                        FeatherIcons.linkedin,
                        color: Color(0xffA4A4A4),
                        size: 24.0,
                      ),
                    ),
                    const SizedBox(
                      width: 20.0,
                    ),
                    IconButton(
                      onPressed: () {
                        js.context.callMethod(
                          'open',
                          [
                            'https://www.youtube.com/channel/UCv68rl5yx1evXXn3YUsDwew'
                          ],
                        );
                      },
                      icon: const Icon(
                        FeatherIcons.youtube,
                        color: Color(0xffA4A4A4),
                        size: 24.0,
                      ),
                    ),
                  ],
                ),
        ],
      ),
    );
  }
}
