import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:watches_project_ubaid/Controllers/add2cart.dart';
import 'package:watches_project_ubaid/Controllers/home_controller.dart';
import 'package:watches_project_ubaid/View/Get_started.dart';
import 'package:watches_project_ubaid/View/add_to_cart.dart';
import 'package:watches_project_ubaid/View/homescreen.dart';

void main() {
  // Initialize GetX controllers
  Get.put(HomeController());
  Get.put(AddToCartController());

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Watches App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/add-to-cart', // Set the initial route
      getPages: [
        GetPage(name: '/get-started', page: () => GetStartedScreen()),
        GetPage(name: '/home', page: () => HomeScreen()),
        GetPage(name: '/add-to-cart', page: () => AddToCartScreen()), // Add other routes as needed
      ],

      defaultTransition: Transition.fadeIn,
      transitionDuration: Duration(milliseconds: 30),
    );
  }
}
