// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
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
        return macos;
      case TargetPlatform.windows:
        return windows;
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
    apiKey: 'AIzaSyC2JB0aIuSA2kn9iNo_WDmAmnoxYHstzlc',
    appId: '1:1089124474864:web:addcf47411dc07e669c735',
    messagingSenderId: '1089124474864',
    projectId: 'swimm-74388',
    authDomain: 'swimm-74388.firebaseapp.com',
    storageBucket: 'swimm-74388.appspot.com',
    measurementId: 'G-PRZ60V2QYW',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBpatJQ580kMt8zuLl4A6YW1ETxdPLx_YU',
    appId: '1:1089124474864:android:f2f1acf8b27d88f769c735',
    messagingSenderId: '1089124474864',
    projectId: 'swimm-74388',
    storageBucket: 'swimm-74388.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAoMenYFDl_D2_KenbdDnIV7ucm7endGSI',
    appId: '1:1089124474864:ios:c3469e4852dda45e69c735',
    messagingSenderId: '1089124474864',
    projectId: 'swimm-74388',
    storageBucket: 'swimm-74388.appspot.com',
    iosBundleId: 'com.example.swim',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAoMenYFDl_D2_KenbdDnIV7ucm7endGSI',
    appId: '1:1089124474864:ios:c3469e4852dda45e69c735',
    messagingSenderId: '1089124474864',
    projectId: 'swimm-74388',
    storageBucket: 'swimm-74388.appspot.com',
    iosBundleId: 'com.example.swim',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyC2JB0aIuSA2kn9iNo_WDmAmnoxYHstzlc',
    appId: '1:1089124474864:web:652320dfbb42687069c735',
    messagingSenderId: '1089124474864',
    projectId: 'swimm-74388',
    authDomain: 'swimm-74388.firebaseapp.com',
    storageBucket: 'swimm-74388.appspot.com',
    measurementId: 'G-CE26QHCCN4',
  );
}
