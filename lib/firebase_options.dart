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
    apiKey: 'AIzaSyAV8CzI6D67Q_FV7r8jLbk5y-zYomafyMM',
    appId: '1:782441226292:web:1845184b4a16cf99612a61',
    messagingSenderId: '782441226292',
    projectId: 'remoteconfig-d25c7',
    authDomain: 'remoteconfig-d25c7.firebaseapp.com',
    storageBucket: 'remoteconfig-d25c7.appspot.com',
    measurementId: 'G-1C8N9C72TP',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDCWVaV_3F13FLt2UIKkeHdLWQXri1eGtk',
    appId: '1:782441226292:android:b9ca9f94472c6bb9612a61',
    messagingSenderId: '782441226292',
    projectId: 'remoteconfig-d25c7',
    storageBucket: 'remoteconfig-d25c7.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDZ23rMtDWkUvxjM6Zt0IbG9OARzKgy8y8',
    appId: '1:782441226292:ios:84900b5bd7dc745a612a61',
    messagingSenderId: '782441226292',
    projectId: 'remoteconfig-d25c7',
    storageBucket: 'remoteconfig-d25c7.appspot.com',
    iosClientId: '782441226292-fin3i9kpebf5jmrmhv6qju6v7mqlssuo.apps.googleusercontent.com',
    iosBundleId: 'com.example.remoteConfigExample',
  );
}
