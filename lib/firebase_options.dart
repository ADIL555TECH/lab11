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
        return macos;
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
    apiKey: 'AIzaSyDLqtiV9tfwUV-5erL2meOOiJCsB4vQ2xY',
    appId: '1:544323617021:web:45bff5d92146b353c83e94',
    messagingSenderId: '544323617021',
    projectId: 'lab11-a5ed9',
    authDomain: 'lab11-a5ed9.firebaseapp.com',
    storageBucket: 'lab11-a5ed9.appspot.com',
    measurementId: 'G-YW8RPRL2DL',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyASO8Zz7JACANLj0Ij53buVs1sMKmjbYZ0',
    appId: '1:544323617021:android:0469f088a6828ffcc83e94',
    messagingSenderId: '544323617021',
    projectId: 'lab11-a5ed9',
    storageBucket: 'lab11-a5ed9.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAOdPj1hpV1f1jl5NoYhx7zyCTg6E4tqns',
    appId: '1:544323617021:ios:ae9bc7e17c2ef0eac83e94',
    messagingSenderId: '544323617021',
    projectId: 'lab11-a5ed9',
    storageBucket: 'lab11-a5ed9.appspot.com',
    iosBundleId: 'com.example.lab11',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAOdPj1hpV1f1jl5NoYhx7zyCTg6E4tqns',
    appId: '1:544323617021:ios:1ee7949dc003267ac83e94',
    messagingSenderId: '544323617021',
    projectId: 'lab11-a5ed9',
    storageBucket: 'lab11-a5ed9.appspot.com',
    iosBundleId: 'com.example.lab11.RunnerTests',
  );
}
