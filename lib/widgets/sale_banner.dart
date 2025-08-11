import 'package:flutter/material.dart';
import 'package:shoe_stores/utils/app_text_styles.dart';

class SaleBanner extends StatelessWidget {
  const SaleBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(16.0),
      padding: EdgeInsets.all(16.9),
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Get Your",
                  style: AppTextStyles.withColor(
                    AppTextStyles.h2,
                    Colors.white,
                  ),
                ),
                Text(
                  "Special Sale",
                  style: AppTextStyles.withColor(
                    AppTextStyles.withWeight(AppTextStyles.h1, FontWeight.bold),
                    Colors.white,
                  ),
                ),
                Text(
                  "Up To 40%",
                  style: AppTextStyles.withColor(
                    AppTextStyles.h3,
                    Colors.white,
                  ),
                ),
              ],
            ),
          ),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
              foregroundColor: Colors.black,
              padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
            ),
            child: Text("Shop now", style: AppTextStyles.buttonMedium),
          ),
        ],
      ),
    );
  }
}
