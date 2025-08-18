import 'package:flutter/material.dart';

import 'package:shoe_stores/utils/app_text_styles.dart';
import 'package:shoe_stores/widgets/question_card.dart';

class PopularQuestionSection extends StatelessWidget {
  const PopularQuestionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Popular Questions",
            style: AppTextStyles.withColor(
              AppTextStyles.h3,
              Theme.of(context).textTheme.bodyLarge!.color!,
            ),
          ),
          SizedBox(height: 16.0),
          QuestionCard(
            title: "How to track my orders?",
            icon: Icons.local_shipping_outlined,
          ),
          SizedBox(height: 16.0),
          QuestionCard(
            title: "How to track my orders?",
            icon: Icons.local_shipping_outlined,
          ),
        ],
      ),
    );
  }
}
