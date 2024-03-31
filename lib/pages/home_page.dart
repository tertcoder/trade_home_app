import 'package:flutter/material.dart';
import 'package:trade_home_app/components/app_heading.dart';
import 'package:trade_home_app/theme/app_colors.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.black,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              children: [
                SizedBox(height: 25),
                AppHeading(text: "Good Morning!"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
