import 'package:flutter/material.dart';
import 'package:trade_home_app/theme/app_colors.dart';

class AppHeading extends StatelessWidget {
  final String text;
  const AppHeading({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          "assets/images/logo.png",
          width: 36,
        ),
        const SizedBox(width: 12),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Hey",
              style: TextStyle(
                color: AppColors.lightGray,
                fontSize: 16,
              ),
            ),
            Text(
              text,
              style: TextStyle(
                color: AppColors.white,
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
