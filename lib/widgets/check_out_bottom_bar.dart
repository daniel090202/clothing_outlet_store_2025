import 'package:flutter/material.dart';
import 'package:shoe_stores/utils/app_text_styles.dart';

class CheckOutBottomBar extends StatelessWidget {
  final double totalAmount;
  final VoidCallback onPlaceOrder;

  const CheckOutBottomBar({
    super.key,
    required this.totalAmount,
    required this.onPlaceOrder,
  });

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return SafeArea(
      child: Container(
        padding: EdgeInsets.all(24.0),
        decoration: BoxDecoration(
          color: Theme.of(context).cardColor,
          borderRadius: BorderRadius.circular(16.0),
          boxShadow: [
            BoxShadow(
              color: isDark
                  ? Colors.black.withValues(alpha: 0.2)
                  : Colors.grey.withValues(alpha: 0.1),
              blurRadius: 8.0,
              offset: Offset(0.0, 2.0),
            ),
          ],
        ),
        child: ElevatedButton(
          onPressed: onPlaceOrder,
          style: ElevatedButton.styleFrom(
            backgroundColor: Theme.of(context).primaryColor,
            padding: EdgeInsets.symmetric(vertical: 16.0),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusGeometry.circular(12.0),
            ),
          ),
          child: Text(
            "Place Order (\$${totalAmount.toStringAsFixed(2)})",
            style: AppTextStyles.withColor(
              AppTextStyles.buttonMedium,
              Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
