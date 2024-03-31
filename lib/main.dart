import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:trade_home_app/firebase_options.dart';
import 'package:trade_home_app/pages/home_page.dart';
import 'package:trade_home_app/pages/login_page.dart';
import 'package:trade_home_app/pages/signup_page.dart';
import 'package:trade_home_app/pages/starting_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Trade Home',
      theme: ThemeData(fontFamily: 'Manrope'),
      home: const HomePage(),
    );
  }
}
