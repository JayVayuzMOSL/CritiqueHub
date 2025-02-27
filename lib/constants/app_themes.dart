import 'package:critique_hub/constants/app_colors.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: AppColors.primaryColor,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: AppBarTheme(
      elevation: 2,
      surfaceTintColor: Colors.white,
      backgroundColor: Colors.white,
      titleTextStyle: _textThemeLight.titleLarge,
      iconTheme: const IconThemeData(color: Colors.white),
    ),
    inputDecorationTheme: _inputDecorationTheme,
    textTheme: _textThemeLight,
    cardColor: Colors.white,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: AppColors.primaryColor,
      selectedItemColor: AppColors.primaryColor,
      unselectedItemColor: AppColors.primaryColor,
    ),
  );

  // Common Input Decoration
  static final InputDecorationTheme _inputDecorationTheme = InputDecorationTheme(
    border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
    hintStyle: _textThemeLight.displayMedium,
    contentPadding: EdgeInsets.symmetric(horizontal: wRes(16), vertical: hRes(12)),
  );

  // Light Theme Text
  static final TextTheme _textThemeLight = GoogleFonts.robotoTextTheme().copyWith(
    titleLarge: GoogleFonts.roboto(fontSize: spRes(24), fontWeight: FontWeight.w500, color: AppColors.primaryColor),
    titleMedium: GoogleFonts.notoSansKr(fontSize: spRes(18), fontWeight: FontWeight.w500, color: AppColors.blackColor),
    titleSmall: GoogleFonts.notoSansKr(fontSize: spRes(14), fontWeight: FontWeight.w700),
    headlineLarge: GoogleFonts.notoSansKr(fontSize: spRes(20), fontWeight: FontWeight.w500),
    bodyLarge: GoogleFonts.roboto(fontSize: spRes(16), fontWeight: FontWeight.w500),
    bodyMedium: GoogleFonts.roboto(fontSize: spRes(15), fontWeight: FontWeight.w400),
    bodySmall: GoogleFonts.notoSansKr(fontSize: spRes(12), fontWeight: FontWeight.w400, color: AppColors.headerColor),
    displayLarge: GoogleFonts.notoSansKr(fontSize: spRes(14), fontWeight: FontWeight.w500),
    displayMedium: GoogleFonts.notoSans(fontSize: spRes(12), fontWeight: FontWeight.w400, color: AppColors.searchColor),
    displaySmall: GoogleFonts.notoSansKr(fontSize: spRes(10), fontWeight: FontWeight.w700, color: AppColors.starBgColor),
    labelMedium: GoogleFonts.notoSansKr(fontSize: spRes(13), fontWeight: FontWeight.w400, color: AppColors.tagTextColor),
    labelSmall: GoogleFonts.notoSansKr(fontSize: spRes(11), fontWeight: FontWeight.w400, color: AppColors.tagTextColor)
  );
}

// Responsive utility functions
double spRes(double size) => kIsWeb ? size : size.sp;
double wRes(double size) => kIsWeb ? size : size.w;
double hRes(double size) => kIsWeb ? size : size.h;
