import 'package:watches_project_ubaid/View/GetStarted/getstarted_Controller.dart';
import 'package:get/get.dart';

class GetStartedBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<GetStartedController>(GetStartedController());
  }
}
