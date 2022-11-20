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
      throw UnsupportedError(
        'DefaultFirebaseOptions have not been configured for web - '
        'you can reconfigure this by running the FlutterFire CLI again.',
      );
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

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAnjb7iXVV7Z01WvPoMzZF20aChYFGD_70',
    appId: '1:346854821302:android:f400d4d7c792d708c40517',
    messagingSenderId: '346854821302',
    projectId: 'flutter-99ed8',
    storageBucket: 'flutter-99ed8.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAMSp7Uq4MBtLCp55VZVqPZ2nWdugZiDNc',
    appId: '1:346854821302:ios:f2c13301c8b1a1fac40517',
    messagingSenderId: '346854821302',
    projectId: 'flutter-99ed8',
    storageBucket: 'flutter-99ed8.appspot.com',
    androidClientId: '346854821302-gdsfgl55372nj6ih6pd5q4qt9ahjg6el.apps.googleusercontent.com',
    iosClientId: '346854821302-8c9trppn40u9q0qpb0dqnu935bjij9ja.apps.googleusercontent.com',
    iosBundleId: 'com.example.cleanArchitecturePostsApp',
  );
}