import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:woc/screens/sections/footer_section.dart';
import 'package:woc/utils/my_routes.dart';
import 'package:woc/widgets/text_container.dart';
import 'package:woc/widgets/themed_button.dart';
import 'package:woc/widgets/top_navbar.dart';
import 'dart:html';
import 'dart:js' as js;
import 'dart:ui' as ui;

class PreRegister extends StatefulWidget {
  const PreRegister({Key? key}) : super(key: key);

  @override
  State<PreRegister> createState() => _PreRegisterState();
}

class _PreRegisterState extends State<PreRegister> {
  final IFrameElement _iframeElement = IFrameElement();
  @override
  void initState() {
    _iframeElement.height = '1276';
    _iframeElement.width = '640';
    _iframeElement.src =
        'https://docs.google.com/forms/d/e/1FAIpQLSdvnuqaDG2MKRbnZzjDXBAPZ5RUyJWD7klo6YUycu7p2q5AdA/viewform?embedded=true';
    _iframeElement.style.border = 'none';
    // ignore: undefined_prefixed_name
    ui.platformViewRegistry.registerViewFactory(
      'gformEmbedding',
      (int viewId) => _iframeElement,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final Widget _iframeWidget = HtmlElementView(
      key: UniqueKey(),
      viewType: 'gformEmbedding',
    );
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      endDrawer: Drawer(
        child: Container(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 20.0,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.popUntil(
                    context,
                    ModalRoute.withName('/'),
                  );
                },
                child: Image.asset(
                  ContextExtensionss(context).theme.backgroundColor ==
                          Colors.white
                      ? 'assets/woc_logo_light.png'
                      : 'assets/woc_logo_dark.png',
                  height: 28.0,
                ),
              ),
              const SizedBox(
                height: 30.0,
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
                  : Container(),
              ModalRoute.of(context)?.settings.name != MyRoutes.sponsors
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
                  : Container(),
              const Spacer(),
            ],
          ),
        ),
      ),
      backgroundColor: context.theme.backgroundColor,
      body: Stack(
        children: [
          Scrollbar(
            isAlwaysShown: false,
            thickness: 6.0,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    width: screenWidth,
                    padding: EdgeInsets.symmetric(
                      horizontal: screenWidth < 965 ? 40.0 : 80.0,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 80.0,
                        ),
                        Row(
                          children: [
                            Text(
                              'Pre-register ',
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: screenWidth < 965
                                    ? screenWidth * 0.09
                                    : 90.0,
                                color: context.theme.backgroundColor ==
                                        Colors.white
                                    ? Colors.black
                                    : Colors.white,
                              ),
                            ),
                            Column(
                              children: [
                                SizedBox(
                                  height: screenWidth < 965
                                      ? screenWidth * 0.03
                                      : 45.0,
                                ),
                                Text(
                                  'today',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: screenWidth < 965
                                        ? screenWidth * 0.03
                                        : 28.0,
                                    color: context.theme.backgroundColor ==
                                            Colors.white
                                        ? Colors.black
                                        : Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          child: AutoSizeText(
                            '''and refer 10 friends to avail early
mentorship and extra benfits, including
help with your proposal and early
community bonding.''',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 28.0,
                              color:
                                  context.theme.backgroundColor == Colors.white
                                      ? Colors.black
                                      : Colors.white,
                            ),
                            maxLines: 4,
                          ),
                        ),
                        const SizedBox(
                          height: 10.0,
                        ),
                        Container(
                          width: screenWidth - 160,
                          child: Text(
                            '''To avail benefits of pre-registrations, refer 10 friends. 
Your referral code is your registered email id. Ask your friends to enter your email id in place of Referral Email Id field.
By referring 10 friends, you'll get early mentorship and extra benefits, including guidance to your proposal and early community bonding to strengthen your chance of acceptance.
The person you are referring will also get a digital badge along with you.
Fill the form and start referring.''',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 18.0,
                              color:
                                  context.theme.backgroundColor == Colors.white
                                      ? Colors.black
                                      : Colors.white,
                            ),
                          ),
                        ),
                        screenWidth < 965
                            ? Container()
                            : InkWell(
                                onTap: () {
                                  js.context.callMethod(
                                    'open',
                                    ['https://forms.gle/QrHbtfDKH7WAEBRe9'],
                                  );
                                },
                                child: Container(
                                  width: screenWidth - 160,
                                  child: Text(
                                    '''If you are not able to fill the form given below, go to https://forms.gle/QrHbtfDKH7WAEBRe9''',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 18.0,
                                      color: context.theme.backgroundColor ==
                                              Colors.white
                                          ? const Color(0xff4285F4)
                                          : const Color(0xff8AB4F8),
                                    ),
                                  ),
                                ),
                              ),
                        const SizedBox(
                          height: 40.0,
                        ),
                        screenWidth < 965
                            ? ThemedButton(
                                onPressed: () {
                                  js.context.callMethod(
                                    'open',
                                    ['https://forms.gle/QrHbtfDKH7WAEBRe9'],
                                  );
                                },
                                title: 'Pre-register Now',
                              )
                            : Center(
                                child: Container(
                                  height: 1550.0,
                                  width: 640.0,
                                  child: _iframeWidget,
                                ),
                              ),
                        const SizedBox(
                          height: 80.0,
                        ),
                      ],
                    ),
                  ),
                  const FooterSection(),
                ],
              ),
            ),
          ),
          const TopNavbar(),
        ],
      ),
    );
  }
}
