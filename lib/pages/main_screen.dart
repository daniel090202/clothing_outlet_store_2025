import 'package:get/get.dart';

import 'package:flutter/material.dart';

import 'package:shoe_stores/pages/home_screen.dart';
import 'package:shoe_stores/pages/account_screen.dart';
import 'package:shoe_stores/pages/shopping_screen.dart';
import 'package:shoe_stores/pages/wish_list_screen.dart';
import 'package:shoe_stores/controllers/app_theme_controller.dart';
import 'package:shoe_stores/controllers/navigation_controller.dart';
import 'package:shoe_stores/widgets/custom_bottom_navigation_bar.dart';

class MainScreen extends StatelessWidget {
  final NavigationController navigationController = Get.put(
    NavigationController(),
  );

  MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AppThemeController>(
      builder: (appThemeController) => Scaffold(
        body: AnimatedSwitcher(
          duration: Duration(milliseconds: 200),
          child: Obx(
            () => IndexedStack(
              key: ValueKey(navigationController.currentIndex.value),
              index: navigationController.currentIndex.value,
              children: [
                HomeScreen(),
                ShoppingScreen(),
                WishListScreen(),
                AccountScreen(),
              ],
            ),
          ),
        ),
        bottomNavigationBar: CustomBottomNavigationBar(),
      ),
    );
  }
}
