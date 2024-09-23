import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyBBZPcXIh0rmlPSGAQLsAR2a8WZROQ_peQ",
            authDomain: "tempo-to-do-app-k3vkln.firebaseapp.com",
            projectId: "tempo-to-do-app-k3vkln",
            storageBucket: "tempo-to-do-app-k3vkln.appspot.com",
            messagingSenderId: "793254268987",
            appId: "1:793254268987:web:952e78ef893b5597ae0c1e"));
  } else {
    await Firebase.initializeApp();
  }
}
