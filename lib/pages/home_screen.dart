import 'package:get/get.dart';

import 'package:flutter/material.dart';
import 'package:shoe_stores/pages/all_products_screen.dart';

import 'package:shoe_stores/widgets/sale_banner.dart';
import 'package:shoe_stores/widgets/product_grid.dart';
import 'package:shoe_stores/widgets/category_chips.dart';
import 'package:shoe_stores/widgets/custom_search_bar.dart';
import 'package:shoe_stores/controllers/app_theme_controller.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 20.0,
                    backgroundImage: AssetImage("assets/images/avatar.jpg"),
                  ),
                  SizedBox(width: 12.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Hello Khanh",
                        style: TextStyle(color: Colors.grey, fontSize: 14.0),
                      ),
                      Text(
                        "Good morning",
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.notifications_outlined),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.shopping_bag_outlined),
                  ),
                  GetBuilder<AppThemeController>(
                    builder: (appThemeController) => IconButton(
                      onPressed: () {},
                      icon: Icon(
                        appThemeController.isDarkMode
                            ? Icons.light_mode
                            : Icons.dark_mode,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            CustomSearchBar(),
            CategoryChips(),
            SaleBanner(),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Popular Product",
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.to(AllProductsScreen());
                    },
                    child: Text(
                      "See all",
                      style: TextStyle(color: Theme.of(context).primaryColor),
                    ),
                  ),
                ],
              ),
            ),

            Expanded(child: ProductGrid()),
          ],
        ),
      ),
    );
  }
}
