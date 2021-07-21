import "package:flutter/material.dart";
import 'package:githubproject2/web/Widget/Responsive.dart';
import 'package:githubproject2/web/Widget/TopBarWidget.dart';

class WebHomeScreen extends StatefulWidget {
  const WebHomeScreen({Key? key}) : super(key: key);

  @override
  _WebHomeScreenState createState() => _WebHomeScreenState();
}

class _WebHomeScreenState extends State<WebHomeScreen> {
  double _scrollPosition = 0;
  double _opacity = 0;
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    _opacity = _scrollPosition < screenSize.height * 0.4
        ? _scrollPosition / (screenSize.height * 0.4)
        : 1;
    return Scaffold(
      appBar: Responsive.isSmallScreen(context)
          ? AppBar()
          : PreferredSize(
              preferredSize: Size(screenSize.width, 1000),
              child: TopBarWidget(
                _opacity,
              ),
            ),
    );
  }
}
