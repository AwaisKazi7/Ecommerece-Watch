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
      padding: const EdgeInsets.all(4),
      width: 176,
      height: 271,
      decoration: BoxDecoration(
        color: CommonColors.searchColor,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 4,
            offset: const Offset(2, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 8,
          ),
          Stack(
            children: [
              Expanded(
                child: Center(
                  child: Image.asset(
                    imagePath,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Positioned(
                right: 10,
                child: Image.asset(
                  cornerImagePath,
                  width: 19,
                  height: 23.5,
                  fit: BoxFit.fill,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 4,
          ),
          Column(
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
                style: CommonTextStyle.cardext4.copyWith(color: Colors.green),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
