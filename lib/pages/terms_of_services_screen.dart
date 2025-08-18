import 'package:get/get.dart';

import 'package:flutter/material.dart';

import 'package:shoe_stores/utils/app_text_styles.dart';
import 'package:shoe_stores/widgets/information_section.dart';

class TermsOfServicesScreen extends StatelessWidget {
  const TermsOfServicesScreen({super.key});

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
          "Terms Of Services",
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
                title: "Welcome To Fashion Store",
                content:
                    "By accessing and using this application, you accept and agree to be bound by the terms and provision of this.",
              ),
              InformationSection(
                title: "Account Registration",
                content:
                    "By accessing and using this application, you accept and agree to be bound by the terms and provision of this.",
              ),
              InformationSection(
                title: "User Responsibility",
                content:
                    "By accessing and using this application, you accept and agree to be bound by the terms and provision of this.",
              ),
              InformationSection(
                title: "Privacy Policy",
                content:
                    "By accessing and using this application, you accept and agree to be bound by the terms and provision of this.",
              ),
              InformationSection(
                title: "Intellectual Property",
                content:
                    "By accessing and using this application, you accept and agree to be bound by the terms and provision of this.",
              ),
              InformationSection(
                title: "Termination",
                content:
                    "By accessing and using this application, you accept and agree to be bound by the terms and provision of this.",
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
