// import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:watches_project_ubaid/View/HomeScreen/Home_widget/cards_classes.dart';
import 'package:watches_project_ubaid/routes.dart/rout_name_string.dart';

class HomeScreenController extends GetxController {
  int selectedIndex = 0;

  final List<HorizontalCardData> horizontalCardList = [
    HorizontalCardData(
      brand: 'ROLEX',
      modelName: 'SEA-DWELLER',
      description: 'Simply Dummy Text Of The \nPrinting And',
      price: '\$ 1,196,700',
      imagePath: 'assets/images/card1_image.png',
      cornerImagePath: 'assets/images/watchlist.png',
    ),
    HorizontalCardData(
      brand: 'OMEGA',
      modelName: 'SPEEDMASTER',
      description: 'Simply Dummy Text Of The \nPrinting And',
      price: '\$ 1,196,700',
      imagePath: 'assets/images/card2_image.png',
      cornerImagePath: 'assets/images/watchlist.png',
    ),
    HorizontalCardData(
      brand: 'TAG Heuer',
      modelName: 'CARRERA',
      description: 'Simply Dummy Text Of The \nPrinting And',
      price: '\$ 1,196,700',
      imagePath: 'assets/images/card3_image.png',
      cornerImagePath: 'assets/images/watchlist.png',
    ),
  ];

  final List<VerticalCardData> verticalCardList = [
    VerticalCardData(
      brand: 'ROLEX',
      modelName: 'SEA-DWELLER',
      price: '\$ 1,179,700',
      imagePath: 'assets/images/card1_image.png',
      cornerImagePath: 'assets/images/watchlist.png',
    ),
    VerticalCardData(
      brand: 'OMEGA',
      modelName: 'SPEEDMASTER',
      price: '\$ 1,179,700',
      imagePath: 'assets/images/card2_image.png',
      cornerImagePath: 'assets/images/watchlist.png',
    ),
    VerticalCardData(
      brand: 'TAG Heuer',
      modelName: 'CARRERA',
      price: '\$ 1,179,700',
      imagePath: 'assets/images/card3_image.png',
      cornerImagePath: 'assets/images/watchlist.png',
    ),
    VerticalCardData(
      brand: 'Patek Philippe',
      modelName: 'Nautilus',
      price: '\$ 1,179,700',
      imagePath: 'assets/images/card4_image.png',
      cornerImagePath: 'assets/images/watchlist.png',
    ),
  ];

  void onNavBarTap(int index) {
    Get.toNamed(RoutesName.getStarted);
    selectedIndex = index;
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
    update(); // Notify listeners if using a state management approach
  }
}
