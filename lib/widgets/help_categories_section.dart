import 'package:flutter/material.dart';

import 'package:shoe_stores/utils/app_text_styles.dart';
import 'package:shoe_stores/widgets/category_card.dart';

class HelpCategoriesSection extends StatelessWidget {
  const HelpCategoriesSection({super.key});

  @override
  Widget build(BuildContext context) {
    final categories = [
      {"icon": Icons.shopping_bag_outlined, "title": "Orders"},
      {"icon": Icons.payment_outlined, "title": "Payments"},
      {"icon": Icons.local_shipping_outlined, "title": "Shipping"},
      {"icon": Icons.assignment_return_outlined, "title": "Returns"},
    ];

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Help Categories",
            style: AppTextStyles.withColor(
              AppTextStyles.h3,
              Theme.of(context).textTheme.bodyLarge!.color!,
            ),
          ),
          SizedBox(height: 16.0),
          GridView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 16.0,
              mainAxisSpacing: 16.0,
              childAspectRatio: 1.5,
            ),
            itemCount: categories.length,
            itemBuilder: (context, index) {
              return CategoryCard(
                title: categories[index]["title"] as String,
                icon: categories[index]["icon"] as IconData,
              );
            },
          ),
        ],
      ),
    );
  }
}
