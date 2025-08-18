import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shoe_stores/pages/order_confirmation_screen.dart';

import 'package:shoe_stores/utils/app_text_styles.dart';
import 'package:shoe_stores/widgets/check_out_bottom_bar.dart';
import 'package:shoe_stores/widgets/order_summary_card.dart';
import 'package:shoe_stores/widgets/payment_method_card.dart';
import 'package:shoe_stores/widgets/check_out_address_card.dart';

class CheckOutScreen extends StatelessWidget {
  const CheckOutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.arrow_back_ios,
            color: isDark ? Colors.white : Colors.black,
          ),
        ),
        title: Text(
          "Check Out",
          style: AppTextStyles.withColor(
            AppTextStyles.h3,
            isDark ? Colors.white : Colors.black,
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildSectionTitle(context, "Shipping Address"),
            SizedBox(height: 16.0),
            CheckOutAddressCard(),
            SizedBox(height: 16.0),
            _buildSectionTitle(context, "Payment Method"),
            SizedBox(height: 16.0),
            PaymentMethodCard(),
            SizedBox(height: 24.0),
            _buildSectionTitle(context, "Order Summary"),
            OrderSummaryCard(),
          ],
        ),
      ),
      bottomNavigationBar: CheckOutBottomBar(
        totalAmount: 662.23,
        onPlaceOrder: () {
          final orderNumber =
              'ORD${DateTime.now().microsecondsSinceEpoch.toString().substring(7)}';

          Get.to(
            OrderConfirmationScreen(
              orderNumber: orderNumber,
              totalAmount: 662.23,
            ),
          );
        },
      ),
    );
  }

  Widget _buildSectionTitle(BuildContext context, String title) {
    return Text(
      title,
      style: AppTextStyles.withColor(
        AppTextStyles.h3,
        Theme.of(context).textTheme.bodyLarge!.color!,
      ),
    );
  }
}
