import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyBBI4pebIFaU-SrSjJn2odsvoj8Ko-CGak",
            authDomain: "hospital-booking-2fa15.firebaseapp.com",
            projectId: "hospital-booking-2fa15",
            storageBucket: "hospital-booking-2fa15.firebasestorage.app",
            messagingSenderId: "831699726806",
            appId: "1:831699726806:web:2e2366b61081b76a0eb477",
            measurementId: "G-W3DB2LHWES"));
  } else {
    await Firebase.initializeApp();
  }
}
