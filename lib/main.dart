import 'package:flutter/material.dart';
import 'package:flutter_web_dasboard/constants/style.dart';
import 'package:flutter_web_dasboard/controllers/menu_controller.dart';
import 'package:flutter_web_dasboard/controllers/navigation_controller.dart';
import 'package:flutter_web_dasboard/layout.dart';
import 'package:flutter_web_dasboard/pages/404/error_page.dart';
import 'package:flutter_web_dasboard/pages/authentication/authentication.dart';
import 'package:flutter_web_dasboard/pages/drivers/drivers.dart';
import 'package:flutter_web_dasboard/routing/routes.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_strategy/url_strategy.dart';

void main() {
  Get.put(MenuController());
  Get.put(NavigationController());
  setPathUrlStrategy();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      //navigatorKey:,
      initialRoute: AuthenticationPageRoute,
      unknownRoute: GetPage(
          name: "not-found",
          page: () => PageNotFound(),
          transition: Transition.fadeIn),
      getPages: [
        GetPage(name: RootRoute, page:  () =>SiteLayout()),
        GetPage(name: DriversPageRoute, page:  () =>DriversPage()),
        GetPage(name: AuthenticationPageRoute, page:  () => AuthenticationPage()),
      ],
      title: 'Dashboard',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: light,
        textTheme: GoogleFonts.mulishTextTheme(Theme.of(context).textTheme)
            .apply(bodyColor: Colors.black),
        pageTransitionsTheme: PageTransitionsTheme(builders: {
          TargetPlatform.iOS: FadeUpwardsPageTransitionsBuilder(),
          TargetPlatform.android: FadeUpwardsPageTransitionsBuilder(),
        }),
        primaryColor: Colors.blue,
      ),
    );
  }
}
