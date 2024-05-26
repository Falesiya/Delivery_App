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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for android - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyCVUqT8fhJytrT-AZodr8XMjGK9sEFwlhw',
    appId: '1:701386133934:web:0db4fd833bf4cbd0bab83f',
    messagingSenderId: '701386133934',
    projectId: 'fooddeliveryapp-27d3c',
    authDomain: 'fooddeliveryapp-27d3c.firebaseapp.com',
    storageBucket: 'fooddeliveryapp-27d3c.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCMY6mrNiHbexkTa2Jr2JNtl3kRd3VIzKM',
    appId: '1:701386133934:ios:9d91912633abb281bab83f',
    messagingSenderId: '701386133934',
    projectId: 'fooddeliveryapp-27d3c',
    storageBucket: 'fooddeliveryapp-27d3c.appspot.com',
    iosBundleId: 'com.example.deliveryapp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCMY6mrNiHbexkTa2Jr2JNtl3kRd3VIzKM',
    appId: '1:701386133934:ios:9d91912633abb281bab83f',
    messagingSenderId: '701386133934',
    projectId: 'fooddeliveryapp-27d3c',
    storageBucket: 'fooddeliveryapp-27d3c.appspot.com',
    iosBundleId: 'com.example.deliveryapp',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyCVUqT8fhJytrT-AZodr8XMjGK9sEFwlhw',
    appId: '1:701386133934:web:4510ec2fdf3efc98bab83f',
    messagingSenderId: '701386133934',
    projectId: 'fooddeliveryapp-27d3c',
    authDomain: 'fooddeliveryapp-27d3c.firebaseapp.com',
    storageBucket: 'fooddeliveryapp-27d3c.appspot.com',
  );
}