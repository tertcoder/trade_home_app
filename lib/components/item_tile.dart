import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:trade_home_app/theme/app_colors.dart';

class ItemTile extends StatelessWidget {
  void Function()? previewItem;
  void Function()? toWishlist;
  ItemTile({
    super.key,
    required this.previewItem,
    required this.toWishlist,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: previewItem,
      child: Hero(
        tag: 'item',
        child: Container(
          width: double.infinity,
          height: 250,
          margin: const EdgeInsets.symmetric(
            vertical: 20,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
          ),
          clipBehavior: Clip.antiAlias,
          child: Stack(
            children: [
              Image.asset(
                'assets/images/item1.jpeg',
                fit: BoxFit.cover,
                width: double.infinity,
                alignment: Alignment.topCenter,
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  height: 62,
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
                          color: AppColors.white,
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
                            child: SvgPicture.asset(
                              'assets/svgs/bag.svg',
                              height: 32,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
