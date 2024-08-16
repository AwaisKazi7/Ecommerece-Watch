import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:watches_project_ubaid/common/common_button.dart';
import 'package:watches_project_ubaid/common/common_colors.dart';
import 'package:watches_project_ubaid/common/common_rich_text.dart';
import 'package:watches_project_ubaid/common/common_text.dart';
import 'package:watches_project_ubaid/common/common_text_style.dart';
import 'package:watches_project_ubaid/routes.dart/rout_name_string.dart';

class GetStartedScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        color: CommonColors
            .getstartedbg, // Background color for the inner container
        borderRadius: BorderRadius.circular(20.0), // Rounded corners
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            spreadRadius: 2,
            blurRadius: 8,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 40),
          const CommonText(
            text: 'Explore Top \nBrand Watches',
            style: CommonTextStyle.getstartedt1,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 40),
          // Watch Image
          Expanded(
            child: Image.asset(
              'assets/images/getstarted_image.png',
              fit: BoxFit.contain, // Replace with your watch image path
            ),
          ),
          const SizedBox(height: 40),
          // Get Started Button
          Container(
            height: 57.44,
            width: 333,
            decoration: BoxDecoration(
              color: CommonColors.greenColor,
              borderRadius: BorderRadius.circular(14),
            ),
            child: CommonButton(
              text: 'Get Started',
              textStyle: CommonTextStyle.getstartedtbt1,
              onPressed: () {
                Get.toNamed(RoutesName.homescreen);
              },
            ),
          ),
          const SizedBox(height: 40),
          // Login Link using CommonRichText
          GestureDetector(
            onTap: () {},
            child: CommonRichText(
              text1: 'Already have an account? ',
              style1: CommonTextStyle.getstartedt2,
              text2: 'Login now',
              style2: CommonTextStyle.getstartedt2.copyWith(
                color: Colors.blue,
                decoration: TextDecoration.underline,
              ),
              textAlign: TextAlign.center,
              maxLines: 1,
              text: const TextSpan(),
            ),
          ),
        ],
      ),
    );
  }
}
