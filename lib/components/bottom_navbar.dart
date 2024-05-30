import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:trade_home_app/pages/home_page.dart';
import 'package:trade_home_app/theme/app_colors.dart';

class BottomNavbar extends StatefulWidget {
  const BottomNavbar({super.key});

  @override
  State<BottomNavbar> createState() => _BottomNavbarState();
}

class _BottomNavbarState extends State<BottomNavbar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: const HomePage(),
      bottomNavigationBar: SafeArea(
        child: Container(
          margin: const EdgeInsets.fromLTRB(15, 0, 15, 15),
          decoration: const BoxDecoration(
            color: AppColors.darkGray,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset('assets/svgs/Home-icon.svg'),
              SvgPicture.asset('assets/svgs/Explore-icon.svg'),
              SvgPicture.asset('assets/svgs/Wishlist-icon.svg'),
              SvgPicture.asset('assets/svgs/Profile-icon.svg'),
            ],
          ),
        ),
      ),
    );
  }
}
