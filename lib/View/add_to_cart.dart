import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:watches_project_ubaid/Model/bottom_nav_bar.dart';
import 'package:watches_project_ubaid/Controllers/add2cart.dart';
import 'package:watches_project_ubaid/Widget/stars_widget.dart';
import 'package:watches_project_ubaid/common/common_button.dart';
import 'package:watches_project_ubaid/common/common_colors.dart';
import 'package:watches_project_ubaid/common/common_text.dart';
import 'package:watches_project_ubaid/common/common_text_style.dart';

class AddToCartScreen extends StatelessWidget {
  // Initialize the controller
  final AddToCartController controller = Get.put(AddToCartController());

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    // final double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: CommonColors.backgroundColor,
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 60),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                 const SizedBox(height: 40), 
                Row(
                  children: [
                    Image.asset(
                      'assets/images/back_image.png',
                      width: 30,
                      height: 30,
                    ),
                    const SizedBox(width: 80),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Center(
                          child: CommonText(
                            text: 'For You',
                            style: CommonTextStyle.homescreenhead,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(width: 30),
                    Expanded(
                      child: Image.asset(
                        'assets/images/watchlist.png',
                        width: 30,
                        height: 30,
                      ),
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: Image.asset(
                        'assets/images/uplist.png',
                        width: 30,
                        height: 30,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Container(
                  width: 369,
                  height: 312,
                  decoration: const BoxDecoration(
                    color: CommonColors.addcartimgbg,
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Center(
                      child: Image.asset(
                        height: 270,
                        width: 203,
                        'assets/images/addcart_image.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 8),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CommonText(
                      text: 'ROLEX',
                      style: CommonTextStyle.addtocartt1,
                    ),
                    SizedBox(height: 2),
                    CommonText(
                      text: 'SEA-DWELLER',
                      style: CommonTextStyle.addtocartt2,
                    ),
                    SizedBox(height: 2),
                    CommonText(
                      text: '\$ 1,196,700',
                      style: CommonTextStyle.addtocartt3,
                    ),
                    SizedBox(height: 4),
                    Row(
                      children: [
                        StarRating(
                          rating: 4, // Number of filled stars
                          maxRating: 5, // Maximum number of stars
                          size: 20, // Size of each star
                          color: Color(0xFFD89B00), // Color of the stars
                        ),
                        SizedBox(width: 8),
                        Expanded(
                          child: CommonText(
                            text: '235 Reviews',
                            style: CommonTextStyle.addtocartt4,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 10),
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              color: Colors.white,
              child: Center(
                child: CommonButton(
                  width: 333,
                  height: 57.44,
                  text: 'Add To Cart',
                  textStyle: CommonTextStyle.addtocartt2,
                  onPressed: () {
                    // Handle button press logic here
                  },
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: GetBuilder<AddToCartController>(
        builder: (controller) {
          return CustomBottomNavBar(
            currentIndex: controller.selectedIndex.value,
            onTap: controller.onNavBarTap,
          );
        },
      ),
    );
  }
}
