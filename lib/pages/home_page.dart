import 'package:flutter/material.dart';
import 'package:trade_home_app/components/app_heading.dart';
import 'package:trade_home_app/components/item_tile.dart';
import 'package:trade_home_app/pages/item_preview.dart';
import 'package:trade_home_app/theme/app_colors.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.black,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              children: [
                const SizedBox(height: 25),
                const AppHeading(text: "Good Morning!"),
                const SizedBox(height: 36),
                const Row(
                  children: [
                    Text(
                      'Best',
                      style: TextStyle(
                        color: AppColors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    SizedBox(width: 8),
                    Text(
                      'Collections',
                      style: TextStyle(
                        color: AppColors.yellow,
                        fontSize: 24,
                        fontWeight: FontWeight.w800,
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 20),
                // Column(
                //   children: [
                //     ItemTile(
                //       toWishlist: () {},
                //       previewItem: () {
                //         Navigator.push(
                //           context,
                //           MaterialPageRoute(
                //             builder: (context) => const ItemPreview(),
                //           ),
                //         );
                //       },
                //     ),
                //   ],
                // ),
                ListView.builder(
                  itemCount: 10,
                  itemBuilder: (context, index) => ItemTile(
                    previewItem: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ItemPreview(),
                        ),
                      );
                    },
                    toWishlist: () {},
                  ),
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
