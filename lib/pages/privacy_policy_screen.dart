import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:shoe_stores/utils/app_text_styles.dart';
import 'package:shoe_stores/widgets/information_section.dart';

class PrivacyPolicyScreen extends StatelessWidget {
  const PrivacyPolicyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final screenSize = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: isDark ? Colors.white : Colors.black,
          ),
        ),
        title: Text(
          "Privacy Policy",
          style: AppTextStyles.withColor(
            AppTextStyles.h3,
            isDark ? Colors.white : Colors.black,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(screenSize.width * 0.05),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InformationSection(
                title: "Information We Collect",
                content:
                    "We collect information that you provide directly to us, including name, email address, and shipping information.",
              ),
              InformationSection(
                title: "How We Use Your Information?",
                content:
                    "We collect information that you provide directly to us, including name, email address, and shipping information.",
              ),
              InformationSection(
                title: "Information We Collect",
                content:
                    "We collect information that you provide directly to us, including name, email address, and shipping information.",
              ),
              InformationSection(
                title: "Information Sharing",
                content:
                    "We collect information that you provide directly to us, including name, email address, and shipping information.",
              ),
              InformationSection(
                title: "Data Security",
                content:
                    "We collect information that you provide directly to us, including name, email address, and shipping information.",
              ),
              InformationSection(
                title: "Your Rights",
                content:
                    "We collect information that you provide directly to us, including name, email address, and shipping information.",
              ),
              InformationSection(
                title: "Cookie Policy",
                content:
                    "We collect information that you provide directly to us, including name, email address, and shipping information.",
              ),
              SizedBox(height: 24.0),
              Text(
                "Last updated: March 2024",
                style: AppTextStyles.withColor(
                  AppTextStyles.h3,
                  isDark ? Colors.grey[400]! : Colors.grey[600]!,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
