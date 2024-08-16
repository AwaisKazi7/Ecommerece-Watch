import 'package:get/get.dart';
import 'package:watches_project_ubaid/View/HomeScreen/home_controller.dart';

class HomeScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<HomeScreenController>(HomeScreenController());
  }
}
