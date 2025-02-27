import 'package:critique_hub/constants/app_colors.dart';
import 'package:critique_hub/constants/app_strings.dart';
import 'package:critique_hub/constants/app_themes.dart';
import 'package:flutter/material.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(wRes(10)),
        border: Border.all(
          width: wRes(2),
          color: AppColors.primaryColor,
        ),
      ),
      margin: EdgeInsets.only(
        left: wRes(15),
        bottom: hRes(20),
        right: wRes(15),
        top: hRes(10),
      ),
      child: TextField(
        decoration: InputDecoration(
          hintText: AppStrings.searchHint,
          border: InputBorder.none,
          contentPadding: EdgeInsets.symmetric(
            horizontal: wRes(16),
            vertical: hRes(8),
          ),
          suffixIcon: Padding(
            padding: EdgeInsets.only(right: wRes(8)),
            child: Icon(
              Icons.search,
              color: Colors.blue,
              size: spRes(24),
            ),
          ),
        ),
      ),
    );
  }
}
