import 'package:critique_hub/constants/app_colors.dart';
import 'package:critique_hub/constants/app_strings.dart';
import 'package:critique_hub/constants/app_themes.dart';
import 'package:critique_hub/data/models/profile_model.dart';
import 'package:critique_hub/ui/widgets/product_review_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ProfileScreen extends StatelessWidget {
  final Profile profile;
  final bool isFirstUser;
  const ProfileScreen({super.key, required this.profile, required this.isFirstUser});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(context),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: hRes(20)),
            _buildProfileHeader(),
            _buildGoldBadge(),
            _buildProfileDescription(context),
            const Divider(color: AppColors.tagBgColor, thickness: 15),
            _buildReviewSection(context),
            SizedBox(height: hRes(5)),
            _buildReviewList(),
          ],
        ),
      ),
    );
  }

  AppBar _buildAppBar(BuildContext context) {
    return AppBar(
      leading: IconButton(
        icon: Icon(Icons.arrow_back, color: AppColors.blackColor, size: wRes(24)),
        onPressed: () => Navigator.pop(context),
      ),
      title: Column(
        children: [
          Text(
            AppStrings.profileTitle,
            style: Theme.of(context).textTheme.displaySmall?.copyWith(
                color: AppColors.tagTextColor, fontWeight: FontWeight.w400, fontSize: spRes(18)),
          ),
          Text(AppStrings.profileSubTitle, style: Theme.of(context).textTheme.bodyLarge),
        ],
      ),
      centerTitle: true,
    );
  }

  Widget _buildProfileHeader() {
    return Column(
      children: [
        CircleAvatar(
          radius: wRes(45),
          backgroundImage: AssetImage(profile.profileImage),
        ),
        SizedBox(height: hRes(10)),
        Text(profile.name, style: TextStyle(fontSize: spRes(20), fontWeight: FontWeight.bold)),
      ],
    );
  }

  Widget _buildGoldBadge() {
    return Visibility(
      visible: isFirstUser,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(AppStrings.starGoldImg, color: AppColors.starBgColor, width: wRes(24), height: hRes(24)),
          SizedBox(width: wRes(5)),
          Text(AppStrings.goldTitle,
              style: TextStyle(fontSize: spRes(16), color: AppColors.starBgColor, fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }

  Widget _buildProfileDescription(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: AppColors.tagBgColor, borderRadius: BorderRadius.circular(8)),
      margin: EdgeInsets.all(wRes(15)),
      padding: EdgeInsets.all(wRes(8)),
      child: Text(
        AppStrings.profileDesTitle,
        style: Theme.of(context).textTheme.displaySmall?.copyWith(
            color: AppColors.tagTextColor, fontWeight: FontWeight.w400, fontSize: spRes(16)),
      ),
    );
  }

  Widget _buildReviewSection(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: wRes(16), right: wRes(16), top: hRes(15)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            flex: 2,
            child: RichText(
              text: TextSpan(children: [
                TextSpan(
                    text: AppStrings.reviewWrittenTitle,
                    style: Theme.of(context).textTheme.bodyLarge),
                TextSpan(
                    text: AppStrings.totalOfVal.replaceAll(RegExp(r'\d+'), profile.reviews.length.toString()),
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(color: AppColors.headerColor)),
              ]),
            ),
          ),
          Expanded(
            child: DropdownButtonFormField<String>(
              decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(horizontal: wRes(12), vertical: hRes(8)),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(wRes(20)),
                  borderSide: const BorderSide(color: AppColors.searchColor),
                ),
                isDense: true,
              ),
              onChanged: (value) {},
              value: AppStrings.dropdownItemVal,
              items: [
                DropdownMenuItem(value: AppStrings.dropdownItemVal, child: Text(AppStrings.dropdownItemVal,style: Theme.of(context)
                    .textTheme
                    .bodySmall
                    ?.copyWith(color: AppColors.searchColor),)),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildReviewList() {
    return ListView.separated(
      separatorBuilder: (context, index) => const Divider(color: AppColors.tagBgColor, thickness: 15),
      itemCount: profile.reviews.length,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return Padding(
          padding: EdgeInsets.symmetric(horizontal: wRes(15), vertical: hRes(12)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Image.network(profile.reviews[index].productImage, width: wRes(80), height: hRes(80)),
                  SizedBox(width: wRes(10)),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(profile.reviews[index].productName, style: TextStyle(fontSize: spRes(14), fontWeight: FontWeight.w600)),
                        Text(profile.reviews[index].productDescription, style: TextStyle(fontSize: spRes(12))),
                        Row(
                          children: [
                            RatingBarIndicator(
                              rating: profile.reviews[index].starRating,
                              itemBuilder: (context, index) => Icon(Icons.star, color: AppColors.starBgColor, size: wRes(20)),
                              itemCount: 5,
                              itemSize: wRes(20),
                            ),
                            SizedBox(width: wRes(5)),
                            Text(profile.reviews[index].starRating.toString(), style: TextStyle(fontSize: spRes(14))),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const Divider(),
              ProductReviewWidget(profile: profile, tags: const [AppStrings.valueForMoney, AppStrings.cpuPerformanceHigh, AppStrings.thermalPackingAvailable, AppStrings.runsGamesWell], reviews: profile.reviews[index]),
            ],
          ),
        );
      },
    );
  }
}