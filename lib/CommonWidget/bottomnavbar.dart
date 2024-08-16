import 'package:flutter/material.dart';
import 'package:watches_project_ubaid/common/common_colors.dart';

// Define a custom BottomNavigationBar class
class CustomBottomNavBar extends StatelessWidget {
  final int currentIndex;
  final ValueChanged<int> onTap;

  const CustomBottomNavBar({
    Key? key,
    required this.currentIndex,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: CommonColors.searchColor,
      type: BottomNavigationBarType.fixed, // To handle multiple items
      currentIndex: currentIndex,

      onTap: onTap,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home), // Replace with your icon
          label: '', // Empty label
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.explore_outlined), // Replace with your icon
          label: '', // Empty label
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.favorite_outline), // Replace with your icon
          label: '', // Empty label
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.shopping_bag_outlined), // Replace with your icon
          label: '', // Empty label
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person_3_outlined), // Replace with your icon
          label: '',
          // Empty label
        ),
      ],
      selectedItemColor:
          CommonColors.greenColor, // Change to your selected item color
      unselectedItemColor: Colors.grey, // Change to your unselected item color
      showUnselectedLabels: false,
      showSelectedLabels: false,
    );
  }
}
