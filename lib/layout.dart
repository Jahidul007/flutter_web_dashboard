import 'package:flutter/material.dart';
import 'package:flutter_web_dasboard/helpers/responsiveness.dart';
import 'package:flutter_web_dasboard/widgets/large_page.dart';
import 'package:flutter_web_dasboard/widgets/small_page.dart';
import 'package:flutter_web_dasboard/widgets/top_nav.dart';

class SiteLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
    return Scaffold(
      key: scaffoldKey,
      appBar: topNavigationBar(context, scaffoldKey),
      drawer: Drawer(),
      body: ResponsivenessWidget(
        largeScreen: LargePage(),
        smallScreen: SmallPage(),
      ),
    );
  }
}
