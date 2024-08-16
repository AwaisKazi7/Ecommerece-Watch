import 'package:flutter/material.dart';

class StarRating extends StatelessWidget {
  final int rating;
  final int maxRating;
  final double size;
  final Color color;

  const StarRating({
    Key? key,
    this.rating = 0, // Default rating if not provided
    this.maxRating = 5, // Default maximum rating if not provided
    this.size = 20.0, // Default star size if not provided
    this.color = const Color(0xFFD89B00), // Default star color if not provided
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> stars = [];
    for (int i = 0; i < maxRating; i++) {
      stars.add(
        Icon(
          i < rating ? Icons.star : Icons.star_border,
          color: color,
          size: size,
        ),
      );
    }
    return Row(children: stars);
  }
}
