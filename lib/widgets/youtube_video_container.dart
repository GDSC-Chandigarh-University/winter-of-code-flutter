import 'package:flutter/material.dart';
import 'dart:html';
import 'dart:ui' as ui;
import 'package:get/get.dart';

class YoutubeVideoContainer extends StatefulWidget {
  String? videoLink;
  String? viewType;
  YoutubeVideoContainer(
      {Key? key, @required this.videoLink, @required this.viewType})
      : super(key: key);

  @override
  _YoutubeVideoContainerState createState() => _YoutubeVideoContainerState();
}

class _YoutubeVideoContainerState extends State<YoutubeVideoContainer> {
  final IFrameElement _iframeElement = IFrameElement();
  @override
  void initState() {
    _iframeElement.height = '500';
    _iframeElement.width = '500';
    _iframeElement.src = '${widget.videoLink}';
    _iframeElement.style.border = 'none';
    // ignore: undefined_prefixed_name
    ui.platformViewRegistry.registerViewFactory(
      '${widget.viewType}',
      (int viewId) => _iframeElement,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    final Widget _iframeWidget = HtmlElementView(
      key: UniqueKey(),
      viewType: '${widget.viewType}',
    );
    return ClipRRect(
      borderRadius: BorderRadius.circular(12.0),
      child: Container(
        height: screenWidth < 500 ? screenWidth * 0.45 : 256.0,
        width: screenWidth < 965 ? 625.0 : ((screenWidth - 190) / 2),
        decoration: BoxDecoration(
          color: context.theme.primaryColor,
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: _iframeWidget,
      ),
    );
  }
}
