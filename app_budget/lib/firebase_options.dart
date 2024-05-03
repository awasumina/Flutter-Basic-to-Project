// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyDqza3yr3CaJsaeeUo12yaESiw1m89sevg',
    appId: '1:357935783557:web:06ca07a0a6b098467ed3ec',
    messagingSenderId: '357935783557',
    projectId: 'budget-app-89e2f',
    authDomain: 'budget-app-89e2f.firebaseapp.com',
    storageBucket: 'budget-app-89e2f.appspot.com',
    measurementId: 'G-HCK4LYTZG4',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBHWyC55ovaveulxwQDNBNggQhCskNE-oo',
    appId: '1:357935783557:android:bb3a47cf604a791b7ed3ec',
    messagingSenderId: '357935783557',
    projectId: 'budget-app-89e2f',
    storageBucket: 'budget-app-89e2f.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDMMHJsNTy0Xqi-dDY7bHZ9YXRUPO9ccCI',
    appId: '1:357935783557:ios:c30df50b09ca6b1c7ed3ec',
    messagingSenderId: '357935783557',
    projectId: 'budget-app-89e2f',
    storageBucket: 'budget-app-89e2f.appspot.com',
    iosClientId: '357935783557-oh15arfgp9ls3bp7ufv0m954r1igevdt.apps.googleusercontent.com',
    iosBundleId: 'com.codingliquids.budgetAppStarting',
  );
}