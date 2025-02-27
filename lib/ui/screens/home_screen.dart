// Home Screen UI
import 'package:critique_hub/constants/app_colors.dart';
import 'package:critique_hub/constants/app_strings.dart';
import 'package:critique_hub/ui/widgets/banner_carousel.dart';
import 'package:critique_hub/ui/widgets/footer_widget.dart';
import 'package:critique_hub/ui/widgets/review_ranking_widget.dart';
import 'package:critique_hub/ui/widgets/reviewer_list.dart';
import 'package:critique_hub/ui/widgets/search_widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(AppStrings.logoTitle),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Banner Section
            const Divider(),
            const CustomSearchBar(),
            BannerCarousel(),
            const SizedBox(height: 10),

            // Top Reviewed Products
            const ReviewRankingWidget(),

            // Best Reviewers
            Container(
              height: 20,
              margin: const EdgeInsets.symmetric(vertical: 10),
              color: AppColors.tagBgColor, // Assuming dark footer background
            ),
            const SizedBox(height: 10),
            const ReviewerList(),

            // Footer
            const FooterWidget(),
          ],
        ),
      ),
    );
  }
}
