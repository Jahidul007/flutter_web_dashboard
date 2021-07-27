import 'package:flutter/material.dart';
import 'package:flutter_web_dasboard/constants/controllers.dart';
import 'package:flutter_web_dasboard/helpers/responsiveness.dart';
import 'package:flutter_web_dasboard/widgets/custom_text.dart';
import 'package:get/get.dart';

class AuthenticationPage extends StatelessWidget {
  const AuthenticationPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Obx(() => Row(
          children: [
            Container(
              margin: EdgeInsets.only(
                  top: ResponsiveWidget.isSmallScreen(context) ? 56 : 6),
              child: CustomText(
                text: menuController.activeItem.value,
                size: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ))
      ],
    );
  }
}
