import 'package:critique_hub/constants/app_strings.dart';
import 'package:critique_hub/constants/app_themes.dart';
import 'package:critique_hub/data/models/review_model.dart';
import 'package:critique_hub/ui/widgets/review_card.dart';
import 'package:flutter/material.dart';

class ReviewRankingWidget extends StatelessWidget {
  const ReviewRankingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: wRes(16), vertical: hRes(8)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildHeader(context),
          SizedBox(height: hRes(8)),
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: reviews.length,
            itemBuilder: (context, index) => ReviewCard(
              rank: index + 1,
              review: reviews[index],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildHeader(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              AppStrings.reviewRankingTitle,
              style: Theme.of(context).textTheme.bodySmall,
            ),
            SizedBox(height: hRes(4)),
            Text(
              AppStrings.reviewRankingSubTitle,
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ],
        ),
        Icon(Icons.arrow_forward_ios, size: spRes(16)),
      ],
    );
  }
}