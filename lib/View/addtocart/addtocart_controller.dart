import 'package:get/get.dart';

import 'package:watches_project_ubaid/routes.dart/rout_name_string.dart';

class AddToCartController extends GetxController {
  RxInt selectedIndex = 0.obs;

  void onNavBarTap(int index) {
    selectedIndex.value = index;

    switch (index) {
      case 0:
        Get.toNamed(RoutesName.homescreen);
        break;
      case 1:
        Get.toNamed(RoutesName.homescreen);
        break;
      case 2:
        Get.toNamed('/bag');
        break;
      case 3:
        Get.toNamed(RoutesName.addtocart);
        break;
      case 4:
        Get.toNamed('/person');
        break;
    }
  }
}
