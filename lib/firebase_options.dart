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
    apiKey: 'AIzaSyAUS8qCEx5Cy_hxrO1q0yaw7foktVmwR6E',
    appId: '1:847333461333:web:686e31bf76831dd1a6b3dc',
    messagingSenderId: '847333461333',
    projectId: 'mynotesflutter37',
    authDomain: 'mynotesflutter37.firebaseapp.com',
    storageBucket: 'mynotesflutter37.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBkQ_SdpZI_ZYH6yrkto6SeMi1O02AQh-8',
    appId: '1:847333461333:android:c0e7914938321996a6b3dc',
    messagingSenderId: '847333461333',
    projectId: 'mynotesflutter37',
    storageBucket: 'mynotesflutter37.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCfjbBKS16niZpC4GGd_XAc9dl159AiFcM',
    appId: '1:847333461333:ios:823f4d53171929fea6b3dc',
    messagingSenderId: '847333461333',
    projectId: 'mynotesflutter37',
    storageBucket: 'mynotesflutter37.appspot.com',
    iosClientId: '847333461333-b10bmee0uts8hed6q0ddr20rjnlf3br1.apps.googleusercontent.com',
    iosBundleId: 'com.example.mynotes',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCfjbBKS16niZpC4GGd_XAc9dl159AiFcM',
    appId: '1:847333461333:ios:823f4d53171929fea6b3dc',
    messagingSenderId: '847333461333',
    projectId: 'mynotesflutter37',
    storageBucket: 'mynotesflutter37.appspot.com',
    iosClientId: '847333461333-b10bmee0uts8hed6q0ddr20rjnlf3br1.apps.googleusercontent.com',
    iosBundleId: 'com.example.mynotes',
  );
}
