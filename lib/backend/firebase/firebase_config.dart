import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyCOqI7HUPiJpl552lbffM2WOIL0wxw-O1o",
            authDomain: "heart-connection-z7frv6.firebaseapp.com",
            projectId: "heart-connection-z7frv6",
            storageBucket: "heart-connection-z7frv6.firebasestorage.app",
            messagingSenderId: "761768028300",
            appId: "1:761768028300:web:ae62f4c9335803e10b73a9"));
  } else {
    await Firebase.initializeApp();
  }
}
