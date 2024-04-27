import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:url_strategy/url_strategy.dart';

import 'firebase_options.dart';
import 'responsive_handler.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    //if running in web
    setPathUrlStrategy();
    await Firebase.initializeApp(
      options: FirebaseOptions(
          apiKey: "AIzaSyCHrF5kyEfnpLyf3QGAQA_yVYfU1SqbedU",
          authDomain: "budget-app-f465f.firebaseapp.com",
          projectId: "budget-app-f465f",
          storageBucket: "budget-app-f465f.appspot.com",
          messagingSenderId: "104101021882",
          appId: "1:104101021882:web:f5101cc1d236b30a981a83",
          measurementId: "G-CGM885Q70E"),
    );
  } else {
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
  }
  runApp(
    ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // theme: ThemeData(useMaterial3: true),
      home: ResponsiveHandler(),
    );
  }
}
