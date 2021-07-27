import 'package:flutter/material.dart';
import 'package:flutter_web_dasboard/widgets/sideMenu.dart';

class LargePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: SideMenu()),

        Expanded(
          flex: 5,
          child: Container(
            color: Colors.blue,
          ),
        )
      ],
    );
  }
}
