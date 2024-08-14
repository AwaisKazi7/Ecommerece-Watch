import 'package:flutter/material.dart';
import 'package:watches_project_ubaid/common/common_button.dart';
import 'package:watches_project_ubaid/common/common_colors.dart';
import 'package:watches_project_ubaid/common/common_text.dart';
import 'package:watches_project_ubaid/common/common_text_style.dart';

class GetStartedScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      // Background color for the entire screen
      child: Center(
        child: Container(
          width: double.infinity, // Take full width
          height: double.infinity, // Take full height
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
                style: CommonTextStyle
                    .getstartedt1, // Define this style in your CommonTextStyle
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 40),
              // Watch Image
              Image.asset(
                'assets/images/getstarted_image.png', // Replace with your watch image path
                width: 200,
                height: 400,
              ),
              const SizedBox(height: 40),
              // Get Started Button
              CommonButton(
                text: 'Get Started',
                textStyle: CommonTextStyle.getstartedtbt1,
                onPressed: () {}, // Define this style in your CommonTextStyle
                // onPressed: () {
                //   // Navigate to the next screen
                //   Navigator.pushNamed(
                //       context, '/home'); // Update the route name as needed
                // },
              ),
              const SizedBox(height: 40),
              // Login Link
              GestureDetector(
                onTap: () {
                  // Navigate to Login screen
                  // Navigator.pushNamed(
                  //     context, '/login'); // Update the route name as needed
                },
                child: RichText(
                  text: TextSpan(
                    children: [
                      const TextSpan(
                        text: 'Already have an account?',
                        style: CommonTextStyle
                            .getstartedt2, // Define this style in your CommonTextStyle
                      ),
                      const WidgetSpan(
                        child: SizedBox(
                            width: 8), // Adjust width for desired space
                      ),
                      TextSpan(
                        text: 'Login now',
                        style: CommonTextStyle.getstartedt2.copyWith(
                          color: Colors.blue, // Color for the link text
                          decoration:
                              TextDecoration.underline, // Underline decoration
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
