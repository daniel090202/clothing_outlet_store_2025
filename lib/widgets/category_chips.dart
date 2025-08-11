import 'package:flutter/material.dart';
import 'package:shoe_stores/utils/app_text_styles.dart';

class CategoryChips extends StatefulWidget {
  const CategoryChips({super.key});

  @override
  State<CategoryChips> createState() => _CategoryChipsState();
}

class _CategoryChipsState extends State<CategoryChips> {
  int selectedIndex = 0;

  final List<String> categories = ["All", "Men", "Women", "Girls"];

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        children: List.generate(
          categories.length,
          (index) => Padding(
            padding: EdgeInsets.only(right: 12.0),
            child: AnimatedContainer(
              duration: Duration(milliseconds: 300),
              curve: Curves.easeInOut,
              child: ChoiceChip(
                label: Text(
                  categories[index],
                  style: AppTextStyles.withColor(
                    selectedIndex == index
                        ? AppTextStyles.withWeight(
                            AppTextStyles.bodySmall,
                            FontWeight.w600,
                          )
                        : AppTextStyles.bodySmall,
                    selectedIndex == index
                        ? Colors.white
                        : isDark
                        ? Colors.grey[300]!
                        : Colors.grey[600]!,
                  ),
                ),
                selected: selectedIndex == index,
                onSelected: (bool selected) {
                  setState(() {
                    selectedIndex = selected ? index : selectedIndex;
                  });
                },
                selectedColor: Theme.of(context).primaryColor,
                backgroundColor: isDark ? Colors.grey[800] : Colors.grey[100],
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusGeometry.circular(20.0),
                ),
                elevation: selectedIndex == index ? 2.0 : 0.0,
                pressElevation: 0.0,
                padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                labelPadding: EdgeInsets.symmetric(
                  horizontal: 4.0,
                  vertical: 1.0,
                ),
                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                side: BorderSide(
                  color: selectedIndex == index
                      ? Colors.transparent
                      : isDark
                      ? Colors.grey[700]!
                      : Colors.grey[300]!,
                  width: 1.0,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
