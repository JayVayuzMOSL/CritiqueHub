import 'package:critique_hub/constants/app_themes.dart';
import 'package:flutter/material.dart';
import 'package:critique_hub/constants/app_colors.dart';
import 'package:critique_hub/constants/app_routes.dart';
import 'package:critique_hub/constants/app_strings.dart';
import 'package:critique_hub/data/models/profile_model.dart';

class ReviewerList extends StatelessWidget {
  const ReviewerList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _ReviewerTitle(),
        SizedBox(height: hRes(8)),
        SizedBox(
          height: hRes(130),
          child: ListView.builder(
            padding: EdgeInsets.symmetric(horizontal: wRes(10)),
            scrollDirection: Axis.horizontal,
            itemCount: userProfileList.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, AppRoutes.profile, arguments: {
                    'isFirstUser': index == 0,
                    'profile': userProfileList[index],
                  });
                },
                child: ReviewerItem(
                  name: userProfileList[index].name,
                  imagePath: userProfileList[index].profileImage,
                  isTopReviewer: index == 0,
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}

class _ReviewerTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: wRes(16)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            AppStrings.reviewerListTitle,
            style: Theme.of(context).textTheme.bodySmall,
          ),
          Text(
            AppStrings.reviewerListSubTitle,
            style: Theme.of(context).textTheme.titleMedium,
          ),
        ],
      ),
    );
  }
}

class ReviewerItem extends StatelessWidget {
  final String name;
  final String imagePath;
  final bool isTopReviewer;

  const ReviewerItem({
    super.key,
    required this.name,
    required this.imagePath,
    this.isTopReviewer = false,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: wRes(4)),
      child: Column(
        children: [
          if (isTopReviewer)
            Column(
              children: [
                Image.asset(
                  AppStrings.starGoldImg,
                  color: AppColors.starBgColor,
                  width: wRes(18),
                  height: hRes(18),
                ),
                _ReviewerAvatar(imagePath: imagePath, isTopReviewer: true),
              ],
            )
          else
            Column(
              children: [
                SizedBox(height: hRes(18)),
                _ReviewerAvatar(imagePath: imagePath, isTopReviewer: false),
              ],
            ),
          SizedBox(height: hRes(4)),
          Text(
            name,
            style: Theme.of(context).textTheme.displayLarge?.copyWith(
              fontWeight: FontWeight.w400,
              color: AppColors.headerColor,
            ),
          ),
        ],
      ),
    );
  }
}

class _ReviewerAvatar extends StatelessWidget {
  final String imagePath;
  final bool isTopReviewer;

  const _ReviewerAvatar({
    required this.imagePath,
    required this.isTopReviewer,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: wRes(35),
      backgroundColor: isTopReviewer ? AppColors.starBgColor : Colors.transparent,
      child: CircleAvatar(
        radius: wRes(32),
        backgroundImage: AssetImage(imagePath),
      ),
    );
  }
}
