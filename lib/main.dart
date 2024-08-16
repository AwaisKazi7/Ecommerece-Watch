import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:watches_project_ubaid/routes.dart/rout_name_string.dart';
import 'package:watches_project_ubaid/routes.dart/route_page_builder.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Watches App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: RoutesName.getStarted,
      getPages: RoutesPagebuilderList.routList,
    );
  }
}
