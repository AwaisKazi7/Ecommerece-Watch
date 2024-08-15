import 'package:get/get.dart';

class AddToCartController extends GetxController {
  // Observable property for selected index in the bottom navigation bar
  var selectedIndex = 0.obs;

  // Method to handle bottom navigation bar item taps
  void onNavBarTap(int index) {
    selectedIndex.value = index;
    // Handle navigation or other actions based on the index
    switch (index) {
      case 0:
        Get.toNamed('/home'); // Navigate to Home Screen
        break;
      case 1:
        Get.toNamed('/favorites'); // Navigate to Favorites Screen
        break;
      case 2:
        Get.toNamed('/bag'); // Navigate to Bag Screen
        break;
      case 3:
        Get.toNamed('/profile'); // Navigate to Profile Screen
        break;
      case 4:
        Get.toNamed('/person'); // Navigate to Person Screen
        break;
    }
  }
}
