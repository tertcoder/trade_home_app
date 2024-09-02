import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:trade_home_app/pages/starting_page.dart';
import 'package:trade_home_app/repository/outfits_repo.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => OutfitRepo(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Trade Home',
      theme: ThemeData(fontFamily: 'Manrope'),
      home: const StartingPage(),
    );
  }
}
