import 'package:critique_hub/constants/app_colors.dart';
import 'package:critique_hub/constants/app_strings.dart';
import 'package:critique_hub/constants/app_themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FooterWidget extends StatelessWidget {
  const FooterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: hRes(16), horizontal: wRes(20)),
      color: AppColors.tagBgColor, // Assuming dark footer background
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // LOGO Inc.
          Text(
            AppStrings.logoIncTitle,
            style: Theme.of(context)
                .textTheme
                .displayLarge
                ?.copyWith(color: AppColors.tagTextColor),
          ),
          SizedBox(height: hRes(8)),

          // Navigation Links
          const Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              _NavItem(text: AppStrings.aboutUsTitle),
              _DividerLine(),
              _NavItem(text: AppStrings.talentRecruitTitle),
              _DividerLine(),
              _NavItem(text: AppStrings.techBlogTitle),
              _DividerLine(),
              _NavItem(text: AppStrings.reviewCopyrightTitle),
            ],
          ),
          SizedBox(height: hRes(12)),

          // Email & Language Dropdown
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const Icon(Icons.send, color: AppColors.tagTextColor, size: 16),
                  SizedBox(width: wRes(4)),
                  Text(
                    AppStrings.supportMailTitle,
                    style: Theme.of(context).textTheme.labelMedium,
                  ),
                ],
              ),
              const _LanguageDropdown(),
            ],
          ),
          SizedBox(height: hRes(12)),

          // Copyright Text
          const Divider(),
          SizedBox(height: hRes(8)),
          Text(
            AppStrings.copyrightInfoTitle,
            style: Theme.of(context).textTheme.displaySmall?.copyWith(
              color: AppColors.tagTextColor,
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(height: hRes(8)),
        ],
      ),
    );
  }
}

// Navigation Item Widget
class _NavItem extends StatelessWidget {
  final String text;
  const _NavItem({required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context).textTheme.labelMedium,
    );
  }
}

// Divider Line Widget
class _DividerLine extends StatelessWidget {
  const _DividerLine();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: wRes(11)),
      child: const Text("|", style: TextStyle(color: AppColors.tagTextColor)),
    );
  }
}

// Language Dropdown Widget
class _LanguageDropdown extends StatelessWidget {
  const _LanguageDropdown();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: wRes(8), vertical: hRes(4)),
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.tagTextColor),
        borderRadius: BorderRadius.circular(15.r),
      ),
      child: Row(
        children: [
          Text(
            "KOR",
            style: Theme.of(context)
                .textTheme
                .displaySmall
                ?.copyWith(color: AppColors.tagTextColor, fontWeight: FontWeight.w400),
          ),
          const Icon(Icons.arrow_drop_down, color: AppColors.tagTextColor, size: 16),
        ],
      ),
    );
  }
}
