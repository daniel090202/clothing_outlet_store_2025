import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:shoe_stores/controllers/auth_controller.dart';

import 'package:shoe_stores/utils/app_themes.dart';
import 'package:shoe_stores/pages/splash_screen.dart';
import 'package:shoe_stores/controllers/app_theme_controller.dart';

void main() async {
  await GetStorage.init();

  Get.put(AppThemeController());
  Get.put(AuthController());

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final AppThemeController appThemeController =
        Get.find<AppThemeController>();

    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: AppThemes.lightTheme,
      darkTheme: AppThemes.darkTheme,
      themeMode: appThemeController.theme,
      debugShowCheckedModeBanner: false,
      defaultTransition: Transition.fade,
      home: SplashScreen(),
    );
  }
}
