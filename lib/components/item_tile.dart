import 'package:flutter/material.dart';
import 'package:trade_home_app/theme/app_colors.dart';

class ItemTile extends StatelessWidget {
  void Function()? toWishlist;
  ItemTile({
    super.key,
    required this.toWishlist,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        height: 280,
        padding: const EdgeInsets.symmetric(
          vertical: 20,
        ),
        child: Stack(
          children: [
            Image.asset(
              'assets/images/item1.jpeg',
              fit: BoxFit.cover,
              width: double.infinity,
              alignment: Alignment.topCenter,
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 10),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    AppColors.darkGray,
                    AppColors.darkGray.withOpacity(0),
                  ],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    '\$40.89',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  GestureDetector(
                    onTap: toWishlist,
                    child: Container(
                      width: 42,
                      height: 42,
                      decoration: BoxDecoration(
                          color: AppColors.darkGray.withOpacity(0.7),
                          borderRadius: BorderRadius.circular(10),
                          border: const Border.fromBorderSide(
                            BorderSide(
                              color: AppColors.lightGray,
                            ),
                          )),
                      child: Center(
                        child: Image.asset('assets/svgs/bag.svg'),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
