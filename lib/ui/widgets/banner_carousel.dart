import 'package:critique_hub/constants/app_strings.dart';
import 'package:critique_hub/constants/app_themes.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider_plus/carousel_slider_plus.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BannerCarousel extends StatefulWidget {
  const BannerCarousel({super.key});

  @override
  _BannerCarouselState createState() => _BannerCarouselState();
}

class _BannerCarouselState extends State<BannerCarousel> {
  int _currentPage = 0;

  final List<String> _bannerImages = [
    AppStrings.landingSliderImg,
    AppStrings.fanImg,
    AppStrings.laptopImg,
    AppStrings.owenImg,
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: hRes(150),
      width: double.infinity,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          _buildCarousel(),
          _buildIndicator(),
        ],
      ),
    );
  }

  Widget _buildCarousel() {
    return CarouselSlider(
      items: _bannerImages.map((imagePath) {
        return Image.asset(
          imagePath,
          fit: BoxFit.cover,
          width: wRes(360),
        );
      }).toList(),
      options: CarouselOptions(
        height: hRes(150),
        autoPlay: true,
        autoPlayInterval: const Duration(seconds: 3),
        autoPlayAnimationDuration: const Duration(milliseconds: 800),
        autoPlayCurve: Curves.easeInOut,
        enlargeCenterPage: true,
        viewportFraction: 1.0, // Full width
        onPageChanged: (index, reason) => setState(() => _currentPage = index),
      ),
    );
  }

  Widget _buildIndicator() {
    return Positioned(
      bottom: hRes(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(
          _bannerImages.length,
              (index) => AnimatedContainer(
            duration: const Duration(milliseconds: 300),
            margin: EdgeInsets.symmetric(horizontal: wRes(4)),
            width: wRes(_currentPage == index ? 16 : 8),
            height: hRes(8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(_currentPage == index ? 4.r : 50.r),
              color: _currentPage == index ? Colors.white : Colors.black26,
            ),
          ),
        ),
      ),
    );
  }
}
