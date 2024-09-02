import 'package:flutter/material.dart';
import 'package:trade_home_app/components/button.dart';
import 'package:trade_home_app/components/input_field.dart';
import 'package:trade_home_app/pages/home_page.dart';
import 'package:trade_home_app/pages/login_page.dart';
import 'package:trade_home_app/theme/app_colors.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.black,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 10),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const LoginPage(),
                      ),
                    );
                  },
                  child: const Row(
                    children: [
                      Icon(
                        Icons.arrow_back_rounded,
                        size: 18,
                        color: AppColors.lightGray,
                      ),
                      Text(
                        "Back to login",
                        style: TextStyle(
                          color: AppColors.lightGray,
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 100),
                const Text(
                  "Create Account",
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
                        "Phone Number",
                        style: TextStyle(
                          color: AppColors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Image.asset(
                              'assets/flags/burundi.png',
                              width: 45,
                            ),
                          ),
                          const SizedBox(width: 12),
                          const Expanded(
                            child: InputField(
                              hint: "+257 65 849 761",
                              obscureText: false,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 12),
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
                      const SizedBox(height: 12),
                      const Text(
                        "Confirm Password",
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
                        onTap: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const HomePage(),
                            ),
                          );
                        },
                        isPrimary: true,
                        label: "Create Account",
                      ),
                      const SizedBox(height: 12),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
