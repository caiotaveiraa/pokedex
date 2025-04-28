//Firebase
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
//Material UI
import 'package:flutter/material.dart';
//Páginas Internas
import 'package:pokedex/firebase_options.dart';
import 'package:pokedex/pages/login_page.dart';
import 'package:pokedex/pages/pokedex.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
        apiKey: "AIzaSyBsgkFUsQwNU_4Th-jHbd_Y3BTw2zCINkM",
        authDomain: "pokedex-add.firebaseapp.com",
        projectId: "pokedex-add",
        storageBucket: "pokedex-add.firebasestorage.app",
        messagingSenderId: "913292998342",
        appId: "1:913292998342:web:c4efcc7bc27a03a4a749c7"),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}
