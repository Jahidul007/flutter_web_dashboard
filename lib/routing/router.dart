import 'package:flutter/material.dart';
import 'package:flutter_web_dasboard/pages/authentication/authentication.dart';
import 'package:flutter_web_dasboard/pages/clients/clients.dart';
import 'package:flutter_web_dasboard/pages/drivers/drivers.dart';
import 'package:flutter_web_dasboard/pages/overview/overview.dart';
import 'package:flutter_web_dasboard/routing/routes.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch(settings.name){
    case OverViewPageRoute:
      return _getPageRoute(OverviewPage());
    case DriversPageRoute:
      return _getPageRoute(DriversPage());
    case ClientsPageRoute:
      return _getPageRoute(ClientsPage());
    default:
      return _getPageRoute(OverviewPage());
  }
}

PageRoute _getPageRoute(Widget child) {
  return MaterialPageRoute(builder: (context) => child);
}
