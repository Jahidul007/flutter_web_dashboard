import 'package:flutter/material.dart';
import 'package:flutter_web_dasboard/constants/controllers.dart';
import 'package:flutter_web_dasboard/constants/style.dart';
import 'package:flutter_web_dasboard/helpers/responsiveness.dart';
import 'package:flutter_web_dasboard/pages/authentication/authentication.dart';
import 'package:flutter_web_dasboard/routing/routes.dart';
import 'package:flutter_web_dasboard/widgets/custom_text.dart';
import 'package:flutter_web_dasboard/widgets/side_menu_item.dart';
import 'package:get/get.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return Container(
      color: light,
      child: ListView(
        children: [
          if (ResponsiveWidget.isSmallScreen(context))
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  height: 40,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: _width / 48,
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 12),
                      child: Image.asset("assets/icons/logo.png"),
                    ),
                    Flexible(
                        child: CustomText(
                      text: "Dash",
                      size: 20,
                      fontWeight: FontWeight.bold,
                      color: active,
                    )),
                    SizedBox(
                      width: _width / 48,
                    )
                  ],
                ),
              ],
            ),
          Divider(
            color: lightGrey.withOpacity(0.1),
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: sideMenuItems
                .map((item) => SideMenuItem(
                      itemName: item.name,
                      onTap: () {
                        if (item.route == AuthenticationPageRoute) {
                          menuController.changeActiveItem(OverViewPageDisplayName);
                          Get.offAllNamed(AuthenticationPageRoute);
                        }
                        if (!menuController.isActive(item.name)) {
                          menuController.changeActiveItem(item.name);
                          if (ResponsiveWidget.isSmallScreen(context))
                            Get.back();
                          navigationController.navigateTo(item.route);
                        }
                      },
                    ))
                .toList(),
          )
        ],
      ),
    );
  }
}
