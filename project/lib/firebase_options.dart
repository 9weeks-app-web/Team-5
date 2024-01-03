// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
// import 'firebase_options.dart';
/// // ...
// await Firebase.initializeApp(
//  options: DefaultFirebaseOptions.currentPlatform,
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
    apiKey: 'AIzaSyBDYth5pOQ9K8er2l2qOZUxM8c32u7u99Q',
    appId: '1:912871759704:web:f3e78ec4b3611cb1ed8f2d',
    messagingSenderId: '912871759704',
    projectId: 'specfolio-50ac1',
    authDomain: 'specfolio-50ac1.firebaseapp.com',
    storageBucket: 'specfolio-50ac1.appspot.com',
    measurementId: 'G-4Z09LFL5F0',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDgd7bMAw3gD2yio90YY66Kdcd_bmIdgRQ',
    appId: '1:912871759704:android:9c7ceae0d613becbed8f2d',
    messagingSenderId: '912871759704',
    projectId: 'specfolio-50ac1',
    storageBucket: 'specfolio-50ac1.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCWf55k2WaqY8yJppFiUqOGtohHDKVpPF4',
    appId: '1:912871759704:ios:33e2a97d43c52c8aed8f2d',
    messagingSenderId: '912871759704',
    projectId: 'specfolio-50ac1',
    storageBucket: 'specfolio-50ac1.appspot.com',
    iosBundleId: 'com.example.project',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCWf55k2WaqY8yJppFiUqOGtohHDKVpPF4',
    appId: '1:912871759704:ios:519d41d1f74789b1ed8f2d',
    messagingSenderId: '912871759704',
    projectId: 'specfolio-50ac1',
    storageBucket: 'specfolio-50ac1.appspot.com',
    iosBundleId: 'com.example.project.RunnerTests',
  );
}