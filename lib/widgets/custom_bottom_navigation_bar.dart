import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:flutter/widgets.dart';

import 'package:shoe_stores/controllers/navigation_controller.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  final NavigationController _navigationController =
      Get.find<NavigationController>();

  CustomBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => BottomNavigationBar(
        currentIndex: _navigationController.currentIndex.value,
        onTap: (index) {
          _navigationController.changeIndex(index);
        },
        items: [
          BottomNavigationBarItem(
            label: "Home",
            icon: Icon(Icons.home_outlined),
          ),
          BottomNavigationBarItem(
            label: "Shopping",
            icon: Icon(Icons.shopping_bag_outlined),
          ),
          BottomNavigationBarItem(
            label: "Wishlist",
            icon: Icon(Icons.favorite_border_outlined),
          ),
          BottomNavigationBarItem(
            label: "Account",
            icon: Icon(Icons.person_outline),
          ),
        ],
      ),
    );
  }
}
