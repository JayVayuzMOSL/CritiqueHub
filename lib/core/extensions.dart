import 'package:critique_hub/constants/app_strings.dart';
import 'package:critique_hub/data/models/review_model.dart';

extension ReviewItemExtension on ReviewItem {
  String getStarImage() {
    double ratingValue = double.tryParse(rating) ?? 0.0;
    if (ratingValue >= 4.5) {
      return AppStrings.starGoldImg;
    } else if (ratingValue >= 4.0) {
      return AppStrings.starSilverImg;
    } else {
      return AppStrings.starBronzeImg;
    }
  }
}