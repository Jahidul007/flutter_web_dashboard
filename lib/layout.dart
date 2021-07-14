import 'package:flutter/material.dart';
import 'package:flutter_web_dasboard/helpers/responsiveness.dart';
import 'package:flutter_web_dasboard/widgets/large_page.dart';
import 'package:flutter_web_dasboard/widgets/small_page.dart';

class SiteLayout extends StatelessWidget {
  const SiteLayout({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text("Dashboard"),
      ),
      body: ResponsivenessWidget(
        largeScreen: LargePage(),
        smallScreen: SmallPage(),
      ),
    );
  }
}
