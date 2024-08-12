import 'package:flutter/material.dart';
import 'package:watches_project_ubaid/common/common_button.dart';
import 'package:watches_project_ubaid/common/horizontal_card.dart';
import 'package:watches_project_ubaid/common/common_colors.dart';
import 'package:watches_project_ubaid/common/common_text.dart';
import 'package:watches_project_ubaid/common/common_text_style.dart';
import 'package:watches_project_ubaid/common/common_textform.dart';
import 'package:watches_project_ubaid/common/vertical_card.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key, required String title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CommonColors.backgroundColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 60),
        child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const Row(
                // mainAxisSize: MainAxisSize.max,
                // mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: CircleAvatar(
                      radius: 26.0,
                      backgroundColor: CommonColors.greenColor,
                      child: CircleAvatar(
                        backgroundColor: CommonColors.greenColor,
                        radius: 20.0, // Adjust the radius as needed
                        backgroundImage: NetworkImage(
                            "https://images.pexels.com/photos/213780/pexels-photo-213780.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"), // Image URL
                      ),
                    ),
                  ),
                  SizedBox(width: 16.0),
                  Expanded(
                    child: CommonText(
                      text: 'Discover \nPremium Watches',
                      style: CommonTextStyle.homescreenhead,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              CommonTextform(
                hintText: 'Search Watch, Brands',
                prefixImage: 'assets/images/search.png',
                suffixImage: 'assets/images/filters.png',
                fillColor: CommonColors.searchColor,
                // borderColor: Colors.transparent,
                borderRadius: 30,
                controller:
                    TextEditingController(), // Path to your filter icon asset
                hintStyle: TextStyle(
                  color: Colors.grey[600],
                  fontSize: 14.0, // Font size of the hint text
                  fontWeight: FontWeight.w200, // Hint text color
                ),
                textStyle: const TextStyle(
                  color: Colors.black,
                ),
                borderColor: Colors.transparent,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30.0),
                child: Row(
                  children: [
                    CommonButton(
                      backgroundColor: CommonColors.greenColor,
                      text: "Luxury",
                      onPressed: () {},
                      textStyle: CommonTextStyle.commonButtonStyle.copyWith(
                          // fontFamily: 'Poppins', // Ensure Poppins font
                          // fontWeight:
                          //     FontWeight.bold, // Optional: Ensure bold text
                          // fontSize: 16,
                          ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    CommonButton(
                      text: "Casual",
                      onPressed: () {},
                      textStyle: CommonTextStyle.commonButtonStyle.copyWith(
                        fontFamily: 'Poppins', // Ensure Poppins font
                        fontWeight:
                            FontWeight.bold, // Optional: Ensure bold text
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    CommonButton(
                      text: "Formal",
                      onPressed: () {},
                      textStyle: CommonTextStyle.commonButtonStyle.copyWith(
                        fontFamily: 'Poppins', // Ensure Poppins font
                        fontWeight:
                            FontWeight.bold, // Optional: Ensure bold text
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    HorizontalCard(
                      text: 'ROLEX',
                      imagePath: 'assets/images/card1_image.png',
                      cornerImagePath: 'assets/images/watchlist.png',
                    ),
                    HorizontalCard(
                      text: 'ROLEX',
                      imagePath: 'assets/images/card1_image.png',
                      cornerImagePath: 'assets/images/watchlist.png',
                    ),
                    HorizontalCard(
                      text: 'ROLEX',
                      imagePath: 'assets/images/card1_image.png',
                      cornerImagePath: 'assets/images/watchlist.png',
                    ),
                    HorizontalCard(
                      text: 'ROLEX',
                      imagePath: 'assets/images/card1_image.png',
                      cornerImagePath: 'assets/images/watchlist.png',
                    ),
                    HorizontalCard(
                      text: 'ROLEX',
                      imagePath: 'assets/images/card1_image.png',
                      cornerImagePath: 'assets/images/watchlist.png',
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, // Number of columns in the grid
                  crossAxisSpacing: 16.0, // Horizontal spacing between items
                  mainAxisSpacing: 16.0, // Vertical spacing between items
                  childAspectRatio: 0.75, // Aspect ratio for each item (width / height)
                ),
                itemCount: 4, // Number of items in the grid
                itemBuilder: (context, index) {
                  return const VerticalCard(
                    text: 'ROLEX',
                    imagePath: 'assets/images/card1_image.png',
                    cornerImagePath: 'assets/images/watchlist.png',
                  );
                },
              ),
            ),
            ],
            ),
      ),
    );
  }
}
