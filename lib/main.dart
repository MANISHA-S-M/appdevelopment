import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:untitled/ui/splash_screen.dart';
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: const FirebaseOptions(
        apiKey: 'AIzaSyCsHT_YgOYmOVFTiLq6U5g5OuQxZqNBLqw',
        appId: '1:959191369906:web:d7f1aad5b9e6a88892a1ab',
        messagingSenderId: '959191369906',
        projectId: 'testing-9d1f1',
        authDomain: 'testing-9d1f1.firebaseapp.com',
        storageBucket: 'testing-9d1f1.appspot.com',
        measurementId: 'G-JLNN3WZ36L',
      )
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',

      home: SplashScreen(),
    );
  }
}

