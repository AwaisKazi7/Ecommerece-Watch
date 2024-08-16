import 'package:get/get.dart';
import 'package:watches_project_ubaid/View/addtocart/addtocart_controller.dart';

class AddToCartBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<AddToCartController>(AddToCartController());
  }
}
