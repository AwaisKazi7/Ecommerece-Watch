import 'package:flutter/material.dart';
import 'package:watches_project_ubaid/common/common_colors.dart';
import 'package:watches_project_ubaid/common/common_text.dart';
import 'package:watches_project_ubaid/common/common_text_style.dart';

class VerticalCard extends StatelessWidget {
  final String brand;
  final String modelName;
  final String price;
  final String imagePath;
  final String cornerImagePath;

  const VerticalCard({
    Key? key,
    required this.imagePath,
    required this.cornerImagePath,
    required this.brand,
    required this.modelName,
    required this.price,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 176, // Adjust the width as needed
      height: 271, // Adjust the height as needed
      decoration: BoxDecoration(
        color: CommonColors.searchColor,
        borderRadius: BorderRadius.circular(1),
        // boxShadow: [
        //   BoxShadow(
        //     color: Colors.black.withOpacity(0.1),
        //     spreadRadius: 2,
        //     blurRadius: 6,
        //     offset: const Offset(0, 4),
        //   ),
        // ],
      ),
      child: Stack(
        children: [
          // Image Section
          Positioned(
            left: 24,
            child: Container(
              height: 188,
              width: 127,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(imagePath),
                  fit: BoxFit.contain, // Ensure the image covers the container
                ),
              ),
            ),
          ),
          // Corner Image
          Positioned(
            top: 2,
            right: 8,
            child: Image.asset(
              cornerImagePath,
              width: 19,
              height: 23.5,
              fit: BoxFit.fill,
            ),
          ),
          // Text Section
          Positioned(
            bottom: 8,
            left: 0,
            right: 0,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CommonText(
                    text: brand,
                    style: CommonTextStyle.cardext1,
                  ),
                  CommonText(
                    text: modelName,
                    style: CommonTextStyle.cardext2,
                  ),
                  CommonText(
                    text: price,
                    style:
                        CommonTextStyle.cardext4.copyWith(color: Colors.green),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
