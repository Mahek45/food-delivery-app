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
    apiKey: 'AIzaSyDzVvk1HqiCuulp-11OMLr4a4CZiobMzYg',
    appId: '1:749276719597:web:d0b20e258b190f5cf91fe4',
    messagingSenderId: '749276719597',
    projectId: 'fooddeliveryapp-53e7f',
    authDomain: 'fooddeliveryapp-53e7f.firebaseapp.com',
    storageBucket: 'fooddeliveryapp-53e7f.firebasestorage.app',
    measurementId: 'G-V5MBVM3W9H',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAOKQXpsObGSRQ7azugLuPB22b4SnLU6FI',
    appId: '1:749276719597:android:394407a45874f181f91fe4',
    messagingSenderId: '749276719597',
    projectId: 'fooddeliveryapp-53e7f',
    storageBucket: 'fooddeliveryapp-53e7f.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAdO3r-vzwZdw507SyYtDSl3HUMMRxAPEs',
    appId: '1:749276719597:ios:e1e9f0686b13e994f91fe4',
    messagingSenderId: '749276719597',
    projectId: 'fooddeliveryapp-53e7f',
    storageBucket: 'fooddeliveryapp-53e7f.firebasestorage.app',
    iosBundleId: 'com.example.foodDeliver',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAdO3r-vzwZdw507SyYtDSl3HUMMRxAPEs',
    appId: '1:749276719597:ios:e1e9f0686b13e994f91fe4',
    messagingSenderId: '749276719597',
    projectId: 'fooddeliveryapp-53e7f',
    storageBucket: 'fooddeliveryapp-53e7f.firebasestorage.app',
    iosBundleId: 'com.example.foodDeliver',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyDzVvk1HqiCuulp-11OMLr4a4CZiobMzYg',
    appId: '1:749276719597:web:a8cc0b5fe49e8e4cf91fe4',
    messagingSenderId: '749276719597',
    projectId: 'fooddeliveryapp-53e7f',
    authDomain: 'fooddeliveryapp-53e7f.firebaseapp.com',
    storageBucket: 'fooddeliveryapp-53e7f.firebasestorage.app',
    measurementId: 'G-ZCMHCYJMXD',
  );

}