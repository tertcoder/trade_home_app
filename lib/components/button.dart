import 'package:flutter/material.dart';
import 'package:trade_home_app/theme/app_colors.dart';

class Button extends StatelessWidget {
  final void Function()? onTap;
  final String label;
  final bool isPrimary;
  const Button(
      {super.key,
      required this.onTap,
      required this.isPrimary,
      required this.label});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(vertical: 12),
        decoration: BoxDecoration(
          color: isPrimary ? AppColors.white : Colors.transparent,
          borderRadius: BorderRadius.circular(8),
          border: isPrimary
              ? null
              : Border.all(
                  color: AppColors.white,
                ),
        ),
        child: Text(
          label,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: isPrimary ? AppColors.darkGray : AppColors.white,
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
