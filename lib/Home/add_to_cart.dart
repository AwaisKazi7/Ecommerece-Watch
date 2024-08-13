import 'package:flutter/material.dart';
import 'package:watches_project_ubaid/common/common_button.dart';
import 'package:watches_project_ubaid/common/common_colors.dart';
import 'package:watches_project_ubaid/common/common_text.dart';
import 'package:watches_project_ubaid/common/common_text_style.dart';

class AddToCartScreen extends StatelessWidget {
  const AddToCartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CommonColors.backgroundColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 60),
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
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const CommonText(
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
            const SizedBox(height: 30),
            // Container with watch image
            Center(
              child: Container(
                width: 350,
                height: 300,
                decoration: BoxDecoration(
                  color: CommonColors.addcartimgbg,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      spreadRadius: 2,
                      blurRadius: 4,
                      offset: const Offset(0, 4),
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Image.asset(
                    'assets/images/card1_image.png',
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            // Text Section with different styles
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CommonText(
                  text: 'ROLEX',
                  style: CommonTextStyle.cardext1, // Style 1
                ),
                const SizedBox(height: 8),
                const CommonText(
                  text: 'SEA-DWELLER',
                  style: CommonTextStyle.cardext2, // Style 2
                ),
                const SizedBox(height: 8),
                const CommonText(
                  text: '\$1,196,700',
                  style: CommonTextStyle.cardext3, // Style 3
                ),
                const SizedBox(height: 8),
                // Rating Stars and Text
                Row(
                  children: [
                    // Stars
                    Row(
                      children: List.generate(5, (index) {
                        return Icon(
                          index < 4 ? Icons.star : Icons.star_border, // 4 stars filled, 1 star border
                          color: Colors.amber,
                          size: 20, // Adjust size as needed
                        );
                      }),
                    ),
                    const SizedBox(width: 8),
                    // Rating Text
                    const Expanded(
                      child: CommonText(
                        text: '235 Reviews', // Rating text
                        style: CommonTextStyle.cardext4, // Style for rating text
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const Spacer(),
            // Centered Button
            Center(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 20), // Add space from bottom
                child: CommonButton(
                  text: 'Add To Cart',
                  textStyle: CommonTextStyle.cardext2,
                  onPressed: () {
                    // Handle button press
                  },
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.explore),
            label: 'Favorites',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border),
            label: 'Bag',
            // No label
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag),
            label: 'Profile',
            // No label
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: 'Person',
            // No label
          ),
        ],
        backgroundColor: Colors.white,
        selectedItemColor: CommonColors.greenColor,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: false,
        showSelectedLabels: false,
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}
