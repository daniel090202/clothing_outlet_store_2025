import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shoe_stores/controllers/auth_controller.dart';
import 'package:shoe_stores/pages/log_in_screen.dart';
import 'package:shoe_stores/utils/app_text_styles.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final PageController _pageController = PageController();

  final List<OnBoardingItem> _onBoardingItems = [
    OnBoardingItem(
      image: "assets/images/intro.png",
      title: "Discover Latest Trends",
      description:
          "Explore the newest fashion trends and find your unique style",
    ),
    OnBoardingItem(
      image: "assets/images/intro1.png",
      title: "Quality Products",
      description: "Shop premium quality products from top brands worldwide",
    ),
    OnBoardingItem(
      image: "assets/images/intro2.png",
      title: "Easy Shopping",
      description: "Simple and secure shopping experience at your fingertips",
    ),
  ];

  int _currentPage = 0;

  void _handleGetStarted() {
    final AuthController authController = Get.find<AuthController>();

    authController.setFirstTimeDone();

    Get.off(LogInScreen());
  }

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Scaffold(
      body: Stack(
        children: [
          PageView.builder(
            controller: _pageController,
            itemCount: _onBoardingItems.length,
            onPageChanged: (index) {
              setState(() {
                _currentPage = index;
              });
            },
            itemBuilder: (context, index) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    _onBoardingItems[index].image,
                    height: MediaQuery.of(context).size.height * 0.4,
                  ),
                  SizedBox(height: 40.0),
                  Text(
                    _onBoardingItems[index].title,
                    textAlign: TextAlign.center,
                    style: AppTextStyles.withColor(
                      AppTextStyles.h1,
                      Theme.of(context).textTheme.bodyLarge!.color!,
                    ),
                  ),
                  SizedBox(height: 16.0),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 32.0),
                    child: Text(
                      _onBoardingItems[index].description,
                      style: AppTextStyles.withColor(
                        AppTextStyles.bodyLarge,
                        isDark ? Colors.grey[400]! : Colors.grey[600]!,
                      ),
                    ),
                  ),
                ],
              );
            },
          ),
          Positioned(
            bottom: 80.0,
            left: 0.0,
            right: 0.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                _onBoardingItems.length,
                (index) => AnimatedContainer(
                  duration: Duration(microseconds: 300),
                  margin: EdgeInsets.symmetric(horizontal: 4.0),
                  height: 8.0,
                  width: _currentPage == index ? 24.0 : 8.0,
                  decoration: BoxDecoration(
                    color: _currentPage == index
                        ? Theme.of(context).primaryColor
                        : (isDark ? Colors.grey[700] : Colors.grey[300]),
                    borderRadius: BorderRadius.circular(4.0),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 16.0,
            left: 16.0,
            right: 16.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: () {
                    _handleGetStarted();
                  },
                  child: Text(
                    "Skip",
                    style: AppTextStyles.withColor(
                      AppTextStyles.buttonMedium,
                      isDark ? Colors.grey[400]! : Colors.grey[600]!,
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    if (_currentPage < _onBoardingItems.length - 1) {
                      _pageController.nextPage(
                        duration: Duration(milliseconds: 300),
                        curve: Curves.easeInOut,
                      );
                    } else {
                      _handleGetStarted();
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Theme.of(context).primaryColor,
                    padding: EdgeInsets.symmetric(
                      horizontal: 32.0,
                      vertical: 16.0,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadiusGeometry.circular(12.0),
                    ),
                  ),
                  child: Text(
                    _currentPage < _onBoardingItems.length - 1
                        ? "Next"
                        : "Get Started",
                    style: AppTextStyles.withColor(
                      AppTextStyles.buttonMedium,
                      Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class OnBoardingItem {
  final String image;
  final String title;
  final String description;

  OnBoardingItem({
    required this.image,
    required this.title,
    required this.description,
  });
}
