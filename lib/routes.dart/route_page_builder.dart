import 'package:get/get.dart';
import 'package:watches_project_ubaid/View/addtocart/addtocart_binding.dart';
import 'package:watches_project_ubaid/View/addtocart/addtocart_view.dart';
import 'package:watches_project_ubaid/View/GetStarted/getstarted_binding.dart';
import 'package:watches_project_ubaid/View/GetStarted/getstarted_view.dart';
import 'package:watches_project_ubaid/View/HomeScreen/home_binding.dart';
import 'package:watches_project_ubaid/View/HomeScreen/home_view.dart';
import 'package:watches_project_ubaid/routes.dart/rout_name_string.dart';

class RoutesPagebuilderList {
  static List<GetPage> routList = [
    GetPage(
        name: RoutesName.getStarted,
        page: () => GetStartedScreen(),
        binding: GetStartedBinding()),
    GetPage(
        name: RoutesName.homescreen,
        page: () => HomeScreen(),
        binding: HomeScreenBinding()),
    GetPage(
        name: RoutesName.addtocart,
        page: () => AddToCartScreen(),
        binding: AddToCartBinding())
  ];
}
