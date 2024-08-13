import 'package:flutter/material.dart';
import 'package:watches_project_ubaid/common/common_button.dart';
import 'package:watches_project_ubaid/common/horizontal_card.dart';
import 'package:watches_project_ubaid/common/common_colors.dart';
import 'package:watches_project_ubaid/common/common_text.dart';
import 'package:watches_project_ubaid/common/common_text_style.dart';
import 'package:watches_project_ubaid/common/common_textform.dart';
import 'package:watches_project_ubaid/common/vertical_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CommonColors.backgroundColor,
      body: NotificationListener<ScrollNotification>(
        onNotification: (notification) {
          if (notification is ScrollUpdateNotification) {
            // Detect swipe direction
            if (notification.scrollDelta! > 0) {
              print('Swiped right');
              // Perform action for right swipe
            } else if (notification.scrollDelta! < 0) {
              print('Swiped left');
              // Perform action for left swipe
            }
          }
          return true;
        },

      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 60),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            const Row(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: CircleAvatar(
                    radius: 26.0,
                    backgroundColor: CommonColors.greenColor,
                    child: CircleAvatar(
                      backgroundColor: CommonColors.greenColor,
                      radius: 20.0,
                      backgroundImage: NetworkImage(
                          "https://images.pexels.com/photos/213780/pexels-photo-213780.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
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
            const SizedBox(height: 20),
            CommonTextform(
              hintText: 'Search Watch, Brands',
              prefixImage: 'assets/images/search.png',
              suffixImage: 'assets/images/filters.png',
              fillColor: CommonColors.searchColor,
              borderRadius: 30,
              controller: TextEditingController(),
              hintStyle: TextStyle(
                color: Colors.grey[600],
                fontSize: 14.0,
                fontWeight: FontWeight.w200,
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
                    textStyle: CommonTextStyle.commonButtonStyle,
                  ),
                  const SizedBox(width: 20),
                  CommonButton(
                    text: "Casual",
                    onPressed: () {},
                    textStyle: CommonTextStyle.commonButtonStyle,
                  ),
                  const SizedBox(width: 20),
                  CommonButton(
                    text: "Formal",
                    onPressed: () {},
                    textStyle: CommonTextStyle.commonButtonStyle,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              height: 150,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 16.0),
                      child: HorizontalCard(
                        brand: ['ROLEX', 'OMEGA', 'TAG Heuer'][index],
                        modelName: [
                          'SEA-DWELLER',
                          'SPEEDMASTER',
                          'CARRERA'
                        ][index],
                        description: 'Simply Dummy Text Of The \nPrinting And',
                        price: ['\$1,196,700', '\$1,196,700', '\$1,196,700'][index],
                        imagePath: 'assets/images/card1_image.png',
                        cornerImagePath: 'assets/images/watchlist.png',
                      ),
                    );
                  }),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 8.0,
                  mainAxisSpacing: 8.0,
                  childAspectRatio: 0.75,
                ),
                itemCount: 4,
                itemBuilder: (context, index) {
                  return const VerticalCard(
                    brand: 'ROLEX', // Replace with actual data if needed
                    modelName: 'SEA-DWELLER', // Replace with actual data if needed
                    price: '\$1,179,700', 
                    imagePath: 'assets/images/card1_image.png',
                    cornerImagePath: 'assets/images/watchlist.png',
                  );
                },
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
