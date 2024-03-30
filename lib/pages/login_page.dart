import 'package:flutter/material.dart';
import 'package:trade_home_app/components/button.dart';
import 'package:trade_home_app/components/input_field.dart';
import 'package:trade_home_app/theme/app_colors.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.black,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Log In",
                style: TextStyle(
                  color: AppColors.white,
                  fontSize: 32,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(height: 40),
              SizedBox(
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Email address",
                      style: TextStyle(
                        color: AppColors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(height: 8),
                    const InputField(
                      hint: "youremail@gmail.com",
                      obscureText: false,
                    ),
                    const SizedBox(height: 12),
                    const Text(
                      "Password",
                      style: TextStyle(
                        color: AppColors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(height: 8),
                    const InputField(
                      hint: "*************",
                      obscureText: true,
                    ),
                    const SizedBox(height: 20),
                    Button(
                      onTap: () {},
                      isPrimary: true,
                      label: "Connect Now",
                    ),
                    const SizedBox(height: 12),
                    Button(
                      onTap: () {},
                      isPrimary: false,
                      label: "Create Account",
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
