import 'package:critique_hub/constants/app_colors.dart';
import 'package:critique_hub/constants/app_strings.dart';
import 'package:critique_hub/constants/app_themes.dart';
import 'package:critique_hub/data/models/profile_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ProductReviewWidget extends StatelessWidget {
  final List<String> tags;
  final Review reviews;
  final Profile profile;

  const ProductReviewWidget({
    Key? key,
    required this.tags,
    required this.reviews,
    required this.profile,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(wRes(12)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _UserInfo(profile: profile, reviews: reviews),
          SizedBox(height: hRes(20)),
          _TagsSection(tags: tags),
          _ReviewText(reviews: reviews),
          SizedBox(height: hRes(20)),
          if (reviews.reviewImages.isNotEmpty) _ReviewImages(images: reviews.reviewImages),
          SizedBox(height: hRes(10)),
          Divider(),
          _ChatSection(),
        ],
      ),
    );
  }
}

class _UserInfo extends StatelessWidget {
  final Profile profile;
  final Review reviews;

  const _UserInfo({required this.profile, required this.reviews});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          backgroundImage: AssetImage(profile.profileImage),
          radius: wRes(20),
        ),
        SizedBox(width: wRes(10)),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              profile.name,
              style: Theme.of(context).textTheme.displayLarge,
            ),
            Row(
              children: [
                RatingBarIndicator(
                  rating: reviews.starRating,
                  itemBuilder: (context, index) => Icon(
                    Icons.star,
                    color: AppColors.starBgColor,
                  ),
                  itemCount: 5,
                  itemSize: 15,
                ),
                SizedBox(width: wRes(5)),
                Text(
                  reviews.dateOfReview,
                  style: Theme.of(context)
                      .textTheme
                      .displaySmall
                      ?.copyWith(fontWeight: FontWeight.w400, color: AppColors.searchColor),
                ),
              ],
            ),
          ],
        ),
        Spacer(),
        Icon(
          Icons.bookmark_border,
          color: AppColors.searchColor,
          size: spRes(25),
        ),
      ],
    );
  }
}

class _TagsSection extends StatelessWidget {
  final List<String> tags;

  const _TagsSection({required this.tags});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: hRes(40),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: tags.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.only(right: wRes(10)),
            child: Text(
              "❝${tags[index]}❞",
              style: Theme.of(context)
                  .textTheme
                  .displaySmall
                  ?.copyWith(color: AppColors.tabTextColor),
            ),
          );
        },
      ),
    );
  }
}

class _ReviewText extends StatelessWidget {
  final Review reviews;

  const _ReviewText({required this.reviews});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(top: hRes(4)),
          child: Icon(Icons.bolt, color: AppColors.thunderIconColor, size: spRes(16)),
        ),
        SizedBox(width: wRes(8)),
        Expanded(
          child: Text(
            reviews.ratingDescription,
            style: Theme.of(context).textTheme.displayLarge?.copyWith(
              fontWeight: FontWeight.w400,
              color: AppColors.headerColor,
            ),
          ),
        ),
      ],
    );
  }
}

class _ReviewImages extends StatelessWidget {
  final List<String> images;

  const _ReviewImages({required this.images});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: hRes(80),
      child: ListView.builder(
        padding: EdgeInsets.only(left: wRes(20)),
        scrollDirection: Axis.horizontal,
        itemCount: images.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.only(right: wRes(8)),
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(wRes(8)),
              ),
              child: Image.network(
                images[index],
                width: wRes(90),
                height: hRes(90),
                fit: BoxFit.fill,
              ),
            ),
          );
        },
      ),
    );
  }
}

class _ChatSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(AppStrings.chatImg, width: wRes(15), height: hRes(15), fit: BoxFit.fill),
        SizedBox(width: wRes(5)),
        Text(
          AppStrings.chatTitle,
          style: Theme.of(context)
              .textTheme
              .displaySmall
              ?.copyWith(fontWeight: FontWeight.w400, color: AppColors.headerColor),
        ),
      ],
    );
  }
}
