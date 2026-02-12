import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyD-BQ1n33Z5Mc2tNr8VB6moWg9pC0pfNRM",
            authDomain: "rider-a3594.firebaseapp.com",
            projectId: "rider-a3594",
            storageBucket: "rider-a3594.firebasestorage.app",
            messagingSenderId: "349259146162",
            appId: "1:349259146162:web:4637d2429fdc069f02baab",
            measurementId: "G-KS2RDR1NE5"));
  } else {
    await Firebase.initializeApp();
  }
}
