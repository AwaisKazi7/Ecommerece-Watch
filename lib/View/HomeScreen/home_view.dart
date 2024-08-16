import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:watches_project_ubaid/CommonWidget/bottomnavbar.dart';
import 'package:watches_project_ubaid/View/HomeScreen/home_controller.dart';
import 'package:watches_project_ubaid/common/common_button.dart';
import 'package:watches_project_ubaid/common/common_colors.dart';
import 'package:watches_project_ubaid/common/common_text.dart';
import 'package:watches_project_ubaid/common/common_text_style.dart';
import 'package:watches_project_ubaid/common/common_textform.dart';
import 'package:watches_project_ubaid/View/HomeScreen/Home_widget/vertical_card.dart';
import 'package:watches_project_ubaid/View/HomeScreen/Home_widget/horizontal_card.dart';

class HomeScreen extends StatelessWidget {
  final HomeScreenController controller = Get.put(HomeScreenController());

  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CommonColors.backgroundColor,
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(12),
          height: context.height,
          width: context.width,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                const Row(
                  children: <Widget>[
                    CircleAvatar(
                      radius: 26.0,
                      backgroundColor: CommonColors.greenColor,
                      child: CircleAvatar(
                        backgroundColor: CommonColors.greenColor,
                        radius: 20.0,
                        backgroundImage: AssetImage('assets/images/user.png'),
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
                const SizedBox(height: 10),
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
                const SizedBox(height: 10),
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
                Container(
                  margin: const EdgeInsets.only(right: 8, top: 6, bottom: 6),
                  height: 120,
                  child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      return HorizontalCard(
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
                      );
                    },
                  ),
                ),
                const Align(
                  alignment: Alignment.topLeft,
                  child: CommonText(
                    text: "  Find The Luxury",
                    style: CommonTextStyle.findTheLuxury,
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                GridView.builder(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 12.0,
                    mainAxisSpacing: 8.0,
                    // childAspectRatio: 0.75,
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
              ],
            ),
          ),
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
