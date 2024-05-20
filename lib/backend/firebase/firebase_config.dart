import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyBi-UhjBUBeopPk3HoQ9Izfsdqg4YqwUPc",
            authDomain: "weed-detection-zjl7wn.firebaseapp.com",
            projectId: "weed-detection-zjl7wn",
            storageBucket: "weed-detection-zjl7wn.appspot.com",
            messagingSenderId: "633639993845",
            appId: "1:633639993845:web:7d3fa48c96aefa4e6760bc"));
  } else {
    await Firebase.initializeApp();
  }
}
