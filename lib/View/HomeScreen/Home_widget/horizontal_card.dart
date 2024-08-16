import 'package:flutter/material.dart';
import 'package:watches_project_ubaid/common/common_colors.dart';
import 'package:watches_project_ubaid/common/common_text.dart';
import 'package:watches_project_ubaid/common/common_text_style.dart';

class HorizontalCard extends StatelessWidget {
  final String brand;
  final String modelName;
  final String description;
  final String price;
  final String imagePath;
  final String cornerImagePath;

  const HorizontalCard({
    Key? key,
    required this.brand,
    required this.modelName,
    required this.description,
    required this.price,
    required this.imagePath,
    required this.cornerImagePath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 255,
      child: Card(
        color: CommonColors.searchColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CommonText(
                      text: brand,
                      style: CommonTextStyle.cardext1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    CommonText(
                      text: modelName,
                      style: CommonTextStyle.cardext2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Text(
                      description,
                      style: CommonTextStyle.cardext3,
                    ),
                    CommonText(
                      text: price,
                      style: CommonTextStyle.cardext4,
                    ),
                  ],
                ),
              ),
            ),
            // Image Section
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    width: 105,
                    height: 104,
                    decoration: BoxDecoration(
                      color: CommonColors.searchColor,
                      borderRadius: BorderRadius.circular(9),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          spreadRadius: 1,
                          blurRadius: 4,
                          offset: const Offset(0, 2),
                        ),
                      ],
                    ),
                    child: Center(
                      child: Image.asset(
                        imagePath,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 5,
                    right: 5,
                    child: Container(
                      width: 13,
                      height: 16.08,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(cornerImagePath),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
