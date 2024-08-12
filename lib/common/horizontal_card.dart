import 'package:flutter/material.dart';
import 'package:watches_project_ubaid/common/common_colors.dart';
import 'package:watches_project_ubaid/common/common_text_style.dart';

class HorizontalCard extends StatelessWidget {
  final String text;
  final String imagePath;
  final String cornerImagePath;
  

  const HorizontalCard({
    Key? key,
    required this.text,
    required this.imagePath,
    required this.cornerImagePath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 16),
      width: 300, // Width of each card
      child: Card(
        color: CommonColors.searchColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          children: [
            // Text Section
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 10.0, bottom: 30.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      text,
                      style: CommonTextStyle.cardext1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      'SEA-DWELLER',
                      style: TextStyle(
                        color: CommonColors.primaryColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    const Text(
                      'Simply Dummy Text Of The \nPrinting And',
                      style: TextStyle(
                        color: CommonColors.primaryColor,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            // Image Section
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
                width: 120, // Width of the image container
                height: 120, // Height of the image container
                decoration: BoxDecoration(
                  color: CommonColors.searchColor,
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: AssetImage(imagePath),
                    fit: BoxFit.fill,
                    alignment: Alignment.center,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      spreadRadius: 2,
                      blurRadius: 6,
                      offset: const Offset(0, 4),
                    ),
                  ],
                ),
                child: Stack(
                  children: [
                    Positioned(
                      bottom: 5,
                      right: 5,
                      child: Container(
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(cornerImagePath),
                                fit: BoxFit.fill,
                              ),
                            ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
