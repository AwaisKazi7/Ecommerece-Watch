import 'package:flutter/material.dart';
import 'package:watches_project_ubaid/BottomNavBar/bottom_nav_bar.dart';
import 'package:watches_project_ubaid/common/common_button.dart';
import 'package:watches_project_ubaid/common/common_colors.dart';
import 'package:watches_project_ubaid/common/common_text.dart';
import 'package:watches_project_ubaid/common/common_text_style.dart'; // Import the CustomBottomNavBar class

class AddToCartScreen extends StatefulWidget {
  @override
  _AddToCartScreenState createState() => _AddToCartScreenState();
}

class _AddToCartScreenState extends State<AddToCartScreen> {
  int _selectedIndex = 0;

  final String watchImage = 'assets/images/addcart_image.png'; // Single watch image path

  void _onNavBarTap(int index) {
    setState(() {
      _selectedIndex = index;
    });

    // Navigation logic based on the selected index
    switch (index) {
      case 0:
        // Navigate to Home Screen
        break;
      case 1:
        // Navigate to Favorites Screen
        break;
      case 2:
        // Navigate to Bag Screen
        break;
      case 3:
        // Navigate to Profile Screen
        break;
      case 4:
        // Navigate to Person Screen
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CommonColors.backgroundColor,
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 80), // Reduced vertical padding
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Row with icons and text "FOR YOU"
                Row(
                  children: [
                    // Back Image on the left
                    Image.asset(
                      'assets/images/back_image.png', // Replace with your left image path
                      width: 30,
                      height: 30,
                    ),
                    const SizedBox(width: 16),
                    // Title Text centered in the row
                    const Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CommonText(
                            text: 'For You',
                            style: CommonTextStyle.homescreenhead,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 16),
                    // Right Images
                    Image.asset(
                      'assets/images/watchlist.png', // Replace with your right image path
                      width: 30,
                      height: 30,
                    ),
                    const SizedBox(width: 16),
                    Image.asset(
                      'assets/images/uplist.png', // Replace with your second right image path
                      width: 30,
                      height: 30,
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                // Container with watch image
                Expanded(
                  child: Container(
                    width: 392,
                    height: 312,
                    decoration: const BoxDecoration(
                      color: CommonColors.addcartimgbg,
                      // borderRadius: BorderRadius.circular(10),
                      // boxShadow: [
                      //   BoxShadow(
                      //     color: Colors.black.withOpacity(0.1),
                      //     spreadRadius: 2,
                      //     blurRadius: 4,
                      //     offset: const Offset(0, 4),
                      //   ),
                      // ],
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Center(
                        child: Image.asset(
                          height: 270,
                      width: 203,
                          watchImage,
                          fit: BoxFit.contain, // Ensure image fits the container width
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 8),
                // Text Section with different styles
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const CommonText(
                      text: 'ROLEX',
                      style: CommonTextStyle.addtocartt1, // Style 1
                    ),
                    const SizedBox(height: 2),
                    const CommonText(
                      text: 'SEA-DWELLER',
                      style: CommonTextStyle.addtocartt2, // Style 2
                    ),
                    const SizedBox(height: 2),
                    const CommonText(
                      text: '\$ 1,196,700',
                      style: CommonTextStyle.addtocartt3, // Style 3
                    ),
                    const SizedBox(height: 4),
                    // Rating Stars and Text
                    Row(
                      children: [
                        // Stars
                        Row(
                          children: List.generate(5, (index) {
                            return Icon(
                              index < 4 ? Icons.star : Icons.star_border, // 4 stars filled, 1 star border
                              color: const Color(0xFFD89B00),
                              size: 20, // Adjust size as needed
                            );
                          }),
                        ),
                        const SizedBox(width: 8),
                        // Rating Text
                        const Expanded(
                          child: CommonText(
                            text: '235 Reviews', // Rating text
                            style: CommonTextStyle.addtocartt4, // Style for rating text
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
              color: Colors.white, // Background color of the button container
              child: Center(
                child: CommonButton(
                  width: double.infinity,
                  height: 57.44,
                  text: 'Add To Cart',
                  textStyle: CommonTextStyle.addtocartt2,
                  onPressed: () {
                    // Handle button press
                  },
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: CustomBottomNavBar(
        currentIndex: _selectedIndex,
        onTap: _onNavBarTap,
      ),
    );
  }
}
