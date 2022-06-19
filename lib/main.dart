import 'package:addpage/homepage.dart';
import 'package:addpage/welcomePage.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
// ignore: depend_on_referenced_packages

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WelcomePage(),
    );
  }
}
