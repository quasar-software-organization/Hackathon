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
    apiKey: 'AIzaSyAqQmUGNXAI31LmrO9N89PtuuRF7zVI7XU',
    appId: '1:20996820988:web:457faa829dfd59b5d86c79',
    messagingSenderId: '20996820988',
    projectId: 'quasar-general',
    authDomain: 'quasar-general.firebaseapp.com',
    storageBucket: 'quasar-general.appspot.com',
    measurementId: 'G-EKZJQ8RDV5',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCuMC44padmZYD9zuQj16QSWEKmkLd6-nM',
    appId: '1:20996820988:android:9db87061c55408b9d86c79',
    messagingSenderId: '20996820988',
    projectId: 'quasar-general',
    storageBucket: 'quasar-general.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBzy-7fCUV6GQhssSBDUjIACOfFne86jaw',
    appId: '1:20996820988:ios:d151f9f1bb5cd5e6d86c79',
    messagingSenderId: '20996820988',
    projectId: 'quasar-general',
    storageBucket: 'quasar-general.appspot.com',
    androidClientId: '20996820988-3h83m7goal0moor4p84k2imotmam6ijv.apps.googleusercontent.com',
    iosClientId: '20996820988-jgkh41irdkmuprabeg1ski4th9l9qp40.apps.googleusercontent.com',
    iosBundleId: 'com.example.aidcode',
  );
}
