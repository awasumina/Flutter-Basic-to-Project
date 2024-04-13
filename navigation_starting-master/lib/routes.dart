import 'package:flutter/material.dart';

import 'about_mobile.dart';
import 'about_web.dart';
import 'home_mobile.dart';
import 'home_web.dart';


class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
          builder: (_) => LayoutBuilder(builder: (context, constraints) {
            if (constraints.maxWidth > 800) {
              return HomeWeb();
            } else {
              return HomeMobile();
            }
          }),
          settings: settings,
        );
      case '/about':
        final args = settings.arguments;
        return MaterialPageRoute(
          builder: (_) => LayoutBuilder(builder: (context, constraints) {
            if (constraints.maxWidth > 800) {
              return AboutWeb(
                text: args,
              );
            } else {
              return AboutMobile(
                text: args,
              );
            }
          }),
          settings: settings,
        );
      default:
        return MaterialPageRoute(
          builder: (_) {
            return Center(
              child: Text("Error Page"),
            );
          },
        );
    }
  }
}
