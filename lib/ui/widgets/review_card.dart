import 'package:critique_hub/constants/app_colors.dart';
import 'package:critique_hub/constants/app_themes.dart';
import 'package:critique_hub/core/extensions.dart';
import 'package:critique_hub/data/models/review_model.dart';
import 'package:flutter/material.dart';

class ReviewCard extends StatelessWidget {
  final ReviewItem review;
  final int rank;

  const ReviewCard({Key? key, required this.review, required this.rank}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: hRes(10)),
      child: Row(
        children: [
          _ReviewImage(review: review),
          SizedBox(width: wRes(8)),
          Expanded(child: _ReviewDetails(review: review)),
        ],
      ),
    );
  }
}

class _ReviewImage extends StatelessWidget {
  final ReviewItem review;

  const _ReviewImage({required this.review});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: AppColors.imgBorderColor),
          ),
          child: Image.asset(
            review.image,
            fit: BoxFit.contain,
            height: hRes(110),
            width: wRes(110),
          ),
        ),
        Positioned(
          top: hRes(4),
          left: wRes(4),
          child: Image.asset(
            review.getStarImage(),
            width: wRes(24),
            height: hRes(24),
          ),
        ),
      ],
    );
  }
}

class _ReviewDetails extends StatelessWidget {
  final ReviewItem review;

  const _ReviewDetails({required this.review});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: review.brandName,
                style: Theme.of(context).textTheme.titleSmall,
              ),
              TextSpan(
                text: review.title,
                style: Theme.of(context).textTheme.displayLarge,
              ),
            ],
          ),
        ),
        SizedBox(height: hRes(5)),
        _DescriptionList(review: review),
        SizedBox(height: hRes(2)),
        _RatingRow(review: review),
        SizedBox(height: hRes(2)),
        _TagList(review: review),
      ],
    );
  }
}

class _DescriptionList extends StatelessWidget {
  final ReviewItem review;

  const _DescriptionList({required this.review});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: review.description.map((desc) {
        return Padding(
          padding: EdgeInsets.only(bottom: hRes(4)),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('• ',
                  style: Theme.of(context)
                      .textTheme
                      .displayMedium
                      ?.copyWith(color: AppColors.descriptionColor)),
              Expanded(
                child: Text(
                  desc,
                  style: Theme.of(context)
                      .textTheme
                      .displayMedium
                      ?.copyWith(color: AppColors.descriptionColor),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                ),
              ),
            ],
          ),
        );
      }).toList(),
    );
  }
}

class _RatingRow extends StatelessWidget {
  final ReviewItem review;

  const _RatingRow({required this.review});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(Icons.star, size: spRes(14), color: AppColors.starBgColor),
        SizedBox(width: wRes(4)),
        Text(review.rating, style: Theme.of(context).textTheme.displaySmall),
        Text(' (${review.reviewCount})',
            style: Theme.of(context)
                .textTheme
                .displaySmall
                ?.copyWith(color: AppColors.reviewCountColor)),
      ],
    );
  }
}

class _TagList extends StatelessWidget {
  final ReviewItem review;

  const _TagList({required this.review});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: review.tags.map((tag) {
        return Padding(
          padding: EdgeInsets.only(right: wRes(4)),
          child: Chip(
            side: BorderSide.none,
            label: Text(tag, style: Theme.of(context).textTheme.labelSmall),
            backgroundColor: AppColors.tagBgColor,
            visualDensity: VisualDensity(horizontal: -4, vertical: -4),
          ),
        );
      }).toList(),
    );
  }
}