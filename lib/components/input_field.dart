import 'package:flutter/material.dart';
import 'package:trade_home_app/theme/app_colors.dart';

class InputField extends StatelessWidget {
  final String hint;
  final bool obscureText;
  const InputField({
    super.key,
    required this.hint,
    required this.obscureText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: AppColors.darkGray,
        borderRadius: BorderRadius.all(Radius.circular(8)),
      ),
      child: TextField(
        obscureText: obscureText,
        style: const TextStyle(
          color: AppColors.white,
          fontSize: 16,
          fontWeight: FontWeight.w500,
        ),
        cursorColor: AppColors.white,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.all(12.0),
          hintText: hint,
          hintStyle: const TextStyle(
            color: AppColors.lightGray,
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
          border: InputBorder.none,
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: AppColors.lightGray,
            ),
            borderRadius: BorderRadius.all(Radius.circular(8)),
          ),
        ),
      ),
    );
  }
}
