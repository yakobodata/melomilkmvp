
// File generated by FlutLab.
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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for iOS - '
          'try to add using FlutLab Firebase Configuration',
        );
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'it not supported by FlutLab yet, but you can add it manually',
        );
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'it not supported by FlutLab yet, but you can add it manually',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'it not supported by FlutLab yet, but you can add it manually',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyBO3azstSwS-j2jsEflD9tP5BfRR5njN5k',
    authDomain: 'melo-milk.firebaseapp.com',
    projectId: 'melo-milk',
    storageBucket: 'melo-milk.appspot.com',
    messagingSenderId: '235440508412',
    appId: '1:235440508412:web:fa7f1c76a3767004b73679'
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAzc74U2xuL9nyHnuhHxseJ1yyVuF_0360',
    appId: '1:235440508412:android:e716db912482bbe9b73679',
    messagingSenderId: '235440508412',
    projectId: 'melo-milk',
    storageBucket: 'melo-milk.appspot.com'
  );
}
