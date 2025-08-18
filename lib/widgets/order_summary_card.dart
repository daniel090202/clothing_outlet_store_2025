import 'package:flutter/material.dart';
import 'package:shoe_stores/utils/app_text_styles.dart';

class OrderSummaryCard extends StatelessWidget {
  const OrderSummaryCard({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Container(
      padding: EdgeInsets.all(16.0),

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
      child: Column(
        children: [
          _buildSummaryRow(context, "Sub total", "\$599.93"),
          SizedBox(height: 8.0),
          _buildSummaryRow(context, "Shipping", "\$10.00"),
          SizedBox(height: 8.0),
          _buildSummaryRow(context, "Tax", "\$53.00"),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 12.0),
            child: Divider(),
          ),
          _buildSummaryRow(context, "Total", "\$662.10", isTotal: true),
        ],
      ),
    );
  }

  Widget _buildSummaryRow(
    BuildContext context,
    String label,
    String value, {
    bool isTotal = false,
  }) {
    final textStyle = isTotal ? AppTextStyles.h3 : AppTextStyles.bodyLarge;
    final color = isTotal
        ? Theme.of(context).primaryColor
        : Theme.of(context).textTheme.bodyLarge!.color!;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(label, style: AppTextStyles.withColor(textStyle, color)),
        Text(value, style: AppTextStyles.withColor(textStyle, color)),
      ],
    );
  }
}
