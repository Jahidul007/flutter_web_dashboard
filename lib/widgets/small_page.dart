import 'package:flutter/material.dart';
import 'package:flutter_web_dasboard/helpers/local_navigator.dart';

class SmallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 16), child: localNavigator());
  }
}
