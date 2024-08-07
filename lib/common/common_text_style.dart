import 'package:flutter/material.dart';
import 'common_colors.dart';

class CommonTextStyle {
  //Common Button style
  static const TextStyle commonButtonStyle = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 16,
    color: CommonColors.primaryColor,
    // required imported Text Font Family
    fontFamily: 'Poppins',
  );

  //HomeScreen
  static const TextStyle homeText = TextStyle(
    color: CommonColors.primaryColor,
    fontSize: 24.0, // Text size
    fontWeight: FontWeight.bold,
    fontFamily: 'Poppins', // Text weight
  );
}
