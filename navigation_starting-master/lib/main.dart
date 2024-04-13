import 'package:flutter/material.dart';

import 'package:url_strategy/url_strategy.dart';

import 'routes.dart';

void main() {
  setPathUrlStrategy();
  runApp(const MyApp());
}
  
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // routes: {
      //   '/': (_) => HomeWeb(),
      //   '/about': (_) => AboutWeb(
      //         text: "Sumina Awa",
      //       ),
      // },
      onGenerateRoute: (settings) => Routes.generateRoute(settings),
      initialRoute: '/',
    );
  }
}
