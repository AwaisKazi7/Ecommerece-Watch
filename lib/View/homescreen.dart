import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:watches_project_ubaid/Model/bottom_nav_bar.dart';
import 'package:watches_project_ubaid/Controllers/home_controller.dart';
import 'package:watches_project_ubaid/common/common_button.dart';
import 'package:watches_project_ubaid/common/common_colors.dart';
import 'package:watches_project_ubaid/common/common_text.dart';
import 'package:watches_project_ubaid/common/common_text_style.dart';
import 'package:watches_project_ubaid/common/common_textform.dart';
import 'package:watches_project_ubaid/Model/vertical_card.dart';
import 'package:watches_project_ubaid/Model/horizontal_card.dart';

class HomeScreen extends StatelessWidget {
  final HomeController controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CommonColors.backgroundColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 70),
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
                      backgroundImage: AssetImage('assets/images/user.png'),
                    ),
                  ),
                ),
                SizedBox(width: 12.0),
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
                fontSize: 16.0,
                fontWeight: FontWeight.w400,
              ),
              textStyle: const TextStyle(
                color: Colors.black,
              ),
              borderColor: Colors.transparent,
            ),
            const SizedBox(height: 20),
            SizedBox(
              height: 51,
              width: 362,
              child: Row(
                children: [
                  Flexible(
                    child: CommonButton(
                      backgroundColor: CommonColors.greenColor,
                      text: "Luxury",
                      onPressed: () {},
                      textStyle: CommonTextStyle.homebuttont1,
                      borderRadius: 31.5,
                      height: 51, // Custom height
                      width: 112,
                    ),
                  ),
                  const SizedBox(width: 10),
                  CommonButton(
                    backgroundColor: CommonColors.searchColor,
                    text: "Casual",
                    onPressed: () {},
                    textStyle: CommonTextStyle.homebuttont1,
                    borderRadius: 31.5,
                    height: 51, // Custom height
                    width: 111,
                  ),
                  const SizedBox(width: 10),
                  CommonButton(
                    backgroundColor: CommonColors.searchColor,
                    text: "Formal",
                    onPressed: () {},
                    textStyle: CommonTextStyle.homebuttont1,
                    borderRadius: 31.5,
                    height: 51, // Custom height
                    width: 111,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 3,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 10.0),
                    child: HorizontalCard(
                      brand: ['ROLEX', 'OMEGA', 'TAG Heuer'][index],
                      modelName: [
                        'SEA-DWELLER',
                        'SPEEDMASTER',
                        'CARRERA'
                      ][index],
                      description: 'Simply Dummy Text Of The \nPrinting And',
                      price: [
                        '\$ 1,196,700',
                        '\$ 1,196,700',
                        '\$ 1,196,700'
                      ][index],
                      imagePath: 'assets/images/card1_image.png',
                      cornerImagePath: 'assets/images/watchlist.png',
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 10),
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
                    brand: 'ROLEX',
                    modelName: 'SEA-DWELLER',
                    price: '\$ 1,179,700',
                    imagePath: 'assets/images/card1_image.png',
                    cornerImagePath: 'assets/images/watchlist.png',
                  );
                },
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomNavBar(
        currentIndex: controller.selectedIndex,
        onTap: (index) {
          controller.onNavBarTap(index);
        },
      ),
    );
  }
}
