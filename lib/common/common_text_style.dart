import 'package:flutter/material.dart';
import 'common_colors.dart';

class CommonTextStyle {
  //Common Button style
  static const TextStyle commonButtonStyle = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 16,
    color: CommonColors.buttontext,
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
  static const TextStyle homescreenhead = TextStyle(
    color: CommonColors.primaryColor,
    fontSize: 30.0, // Text size
    fontWeight: FontWeight.bold,
    fontFamily: 'Poppins', // Text weight
  );
  static const TextStyle cardext1 = TextStyle(
    color: CommonColors.primaryColor,
    fontSize: 16.0, // Text size
    fontWeight: FontWeight.w400,
    fontFamily: 'Poppins', // Text weight
  );
  static const TextStyle cardext2 = TextStyle(
    color: CommonColors.primaryColor,
    fontSize: 16.0, // Text size
    fontWeight: FontWeight.bold,
    fontFamily: 'Poppins', // Text weight
  );
  static const TextStyle cardext3 = TextStyle(
    color: CommonColors.primaryColor,
    fontSize: 16.0, // Text size
    fontWeight: FontWeight.w400,
    fontFamily: 'Poppins', // Text weight
  );
  static const TextStyle cardext4 = TextStyle(
    color: CommonColors.primaryColor,
    fontSize: 16.0, // Text size
    fontWeight: FontWeight.w400,
    fontFamily: 'Poppins', // Text weight
  );
}
