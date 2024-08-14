import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:watches_project_ubaid/Screens/Get_started.dart';
import 'package:watches_project_ubaid/Screens/add_to_cart.dart';
import 'package:watches_project_ubaid/Screens/homescreen.dart';
// import 'package:watches_project_ubaid/Home/homescreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: HomeScreen(),
      // home: AddToCartScreen(),
      // home: GetStartedScreen(),
    );
  }
}
