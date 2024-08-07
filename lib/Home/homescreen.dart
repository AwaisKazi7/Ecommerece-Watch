import 'package:flutter/material.dart';
import 'package:watches_project_ubaid/common/common_colors.dart';
import 'package:watches_project_ubaid/common/common_text.dart';
import 'package:watches_project_ubaid/common/common_text_style.dart';
import 'package:watches_project_ubaid/common/common_textform.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key, required String title});

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    final double screenWidth = screenSize.width;

    return Scaffold(
      backgroundColor: CommonColors.backgroundColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 60),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            // SizedBox(
            //   height: screenWidth * 0.05,
            // ),
            const Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CircleAvatar(
                  backgroundColor: CommonColors.greenColor,
                  child: CircleAvatar(
                    backgroundColor: CommonColors.greenColor,
                    radius: 16.5, // Adjust the radius as needed
                    backgroundImage: NetworkImage(
                        "https://images.pexels.com/photos/213780/pexels-photo-213780.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"), // Image URL
                  ),
                ),
                SizedBox(width: 16.0), // Space between CircleAvatar and text
                Expanded(
                  child: CommonText(
                    text: 'Discover \nPremium Watches',
                    style: CommonTextStyle.homeText,
                  ),
                ),
              ],
            ),
            CommonTextform(
                // hintStyle: TextStyle(fontFamily: 'Poppins'),
                prefixIcon: Icons.ac_unit_sharp,
                suffixIcon: Icons.abc,
                fillColor: Colors.transparent,
                borderRadius: 31.5,
                hintText: 'Search Watch , Brands',
                controller: TextEditingController())
            // Container(
            //   height: 60,
            //   padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.06),
            //   decoration: BoxDecoration(
            //     color: CommonColors.searchColor,
            //     borderRadius: BorderRadius.circular(60.0),
            //   ),
            //   child: Row(
            //     children: <Widget>[
            //       Icon(
            //         Icons.search,
            //         color: CommonColors.primaryColor,
            //         size: screenWidth * 0.08,
            //       ),
            //       SizedBox(width: screenWidth * 0.02),
            //       Expanded(
            //         child: TextField(
            //           decoration: InputDecoration(
            //             hintText:
            //                 'Search Watch, Brands', // Hint text inside the TextField
            //             hintStyle: TextStyle(
            //               color: Colors.grey[600],
            //               fontSize: 14.0, // Font size of the hint text
            //               fontWeight: FontWeight.w200, // Hint text color
            //             ),
            //             border: InputBorder.none, // Remove the default border
            //           ),
            //         ),
            //       ),
            //       const CircleAvatar(
            //         radius: 24.0,
            //         backgroundColor: CommonColors.greenColor,
            //         child: Icon(
            //           Icons.tune,
            //           color: CommonColors.searchColor,
            //           size: 30, // Dynamic icon size
            //         ),
            //       ),
            //     ],
            //   ),
            // )
          ],
        ),
      ),
    );
  }
}
