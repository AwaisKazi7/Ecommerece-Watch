import 'package:flutter/material.dart';
import 'package:watches_project_ubaid/common/common_colors.dart';

class VerticalCard extends StatelessWidget {
  final String text;
  final String imagePath;
  final String cornerImagePath;

  const VerticalCard({
    Key? key,
    required this.text,
    required this.imagePath,
    required this.cornerImagePath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 16),
      width: 200, // Adjust as needed
      child: Expanded(
        child: Card(
          color: CommonColors.searchColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          child: Stack(
            children: [
              Column(
                children: [
                  // Main image container
                  Expanded(
                    child: Container(
                      width: 100,
                      height: 100, // Adjust as needed
                      decoration: BoxDecoration(
                        color: CommonColors.searchColor,
                        borderRadius: const BorderRadius.vertical(top: Radius.circular(8)),
                        image: DecorationImage(
                          image: AssetImage(imagePath),
                          fit: BoxFit.fill,
                        ),
                      ),
                      child: Stack(
                        children: [
                          Positioned(
                            top: 0,
                            left: 80,
                            child: Image.asset(
                              cornerImagePath,
                              width: 20,
                              height: 20,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  // Text below the image
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          text,
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: CommonColors.primaryColor,
                          ),
                        ),
                        const SizedBox(height: 4),
                        const Text(
                          'SEA-DWELLER',
                          style: TextStyle(
                            fontSize: 14,
                            color: CommonColors.primaryColor,
                          ),
                        ),
                        const SizedBox(height: 4),
                        const Text(
                          'Simply Dummy Text Of The \nPrinting And',
                          style: TextStyle(
                            fontSize: 12,
                            color: CommonColors.primaryColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
