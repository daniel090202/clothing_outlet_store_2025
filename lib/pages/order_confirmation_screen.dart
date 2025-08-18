import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

import 'package:flutter/material.dart';
import 'package:shoe_stores/pages/order_screen.dart';
import 'package:shoe_stores/utils/app_text_styles.dart';

class OrderConfirmationScreen extends StatelessWidget {
  final String orderNumber;
  final double totalAmount;

  const OrderConfirmationScreen({
    super.key,
    required this.orderNumber,
    required this.totalAmount,
  });

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Lottie.asset(
                "assets/animations/order_success.json",
                width: 200.0,
                height: 200.0,
                repeat: false,
              ),
              SizedBox(height: 32.0),
              Text(
                "Order Confirmed!",
                textAlign: TextAlign.center,
                style: AppTextStyles.withColor(
                  AppTextStyles.h2,
                  isDark ? Colors.white : Colors.black,
                ),
              ),
              SizedBox(height: 32.0),
              Text(
                "Your order #$orderNumber has been successfully placed!",
                textAlign: TextAlign.center,
                style: AppTextStyles.withColor(
                  AppTextStyles.h2,
                  isDark ? Colors.grey[400]! : Colors.grey[600]!,
                ),
              ),
              SizedBox(height: 48.0),
              ElevatedButton(
                onPressed: () {
                  Get.to(OrderScreen());
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Theme.of(context).primaryColor,
                  padding: EdgeInsets.symmetric(
                    vertical: 16.0,
                    horizontal: 48.0,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                ),
                child: Text(
                  "Track Order",
                  style: AppTextStyles.withColor(
                    AppTextStyles.buttonMedium,
                    Colors.white,
                  ),
                ),
              ),
              SizedBox(height: 16.0),
              TextButton(
                onPressed: () {},
                child: Text(
                  "Continue Shopping",
                  style: AppTextStyles.withColor(
                    AppTextStyles.buttonMedium,
                    Theme.of(context).primaryColor,
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
