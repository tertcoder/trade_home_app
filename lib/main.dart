import 'package:flutter/material.dart';
import 'package:trade_home_app/pages/login_page.dart';
import 'package:trade_home_app/pages/starting_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Trade Home',
      theme: ThemeData(fontFamily: 'Manrope'),
      home: const LoginPage(),
    );
  }
}
