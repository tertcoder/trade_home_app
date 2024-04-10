import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:trade_home_app/theme/app_colors.dart';
import 'package:trade_home_app/utils/open_whatsapp_chat.dart';

class ItemPreview extends StatelessWidget {
  const ItemPreview({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> sizes = ["S", "M", "L", "XL", "XXL"];
    List<String> availableSizes = ["M", "L", "XL"];
    return Scaffold(
      backgroundColor: AppColors.black,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        foregroundColor: AppColors.white,
        title: Text(
          _truncatedText('T-Shirt Bon Bien Ola OEKEK'),
          style: const TextStyle(
            fontWeight: FontWeight.w700,
          ),
        ),
        centerTitle: true,
      ),
      bottomNavigationBar: Container(
        height: 100,
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Row(
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                GestureDetector(
                    onTap: () async {
                      await openWhatsappChat(
                        phoneNumber: '+25776706352',
                        message: 'Hello There!',
                      );
                    },
                    child: SvgPicture.asset('assets/svgs/call.svg')),
                const SizedBox(height: 10),
                const Text(
                  "Contact the seller",
                  style: TextStyle(
                    color: AppColors.lightGray,
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            Spacer(),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  width: 48,
                  height: 48,
                  decoration: BoxDecoration(
                    color: AppColors.darkGray.withOpacity(0.7),
                    border: Border.fromBorderSide(
                      BorderSide(
                        color: AppColors.lightGray,
                      ),
                    ),
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: Center(
                    child: SvgPicture.asset('assets/svgs/bag.svg'),
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  "Wishlist",
                  style: TextStyle(
                    color: AppColors.lightGray,
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              const SizedBox(height: 32),
              Hero(
                tag: 'item',
                child: Container(
                  height: 300,
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.0),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  clipBehavior: Clip.antiAlias,
                  child: Image.asset(
                    'assets/images/item1.jpeg',
                    fit: BoxFit.cover,
                    width: double.infinity,
                    alignment: Alignment.topCenter,
                  ),
                ),
              ),
              const SizedBox(
                height: 70,
              ),
              const Text(
                'T-Shirt',
                style: TextStyle(
                  color: AppColors.lightGray,
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const Text(
                '\$40.89',
                style: TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.w700,
                  color: AppColors.yellow,
                ),
              ),
              const SizedBox(height: 24),
              const Text(
                "sizes",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color: AppColors.lightGray,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: sizes
                    .map(
                      (sz) => Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Text(
                          sz,
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                            color: availableSizes.contains(sz)
                                ? AppColors.yellow
                                : AppColors.lightGray,
                          ),
                        ),
                      ),
                    )
                    .toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  String _truncatedText(String text) {
    return text.length > 10 ? text.substring(0, 10) + "..." : text;
  }
}
