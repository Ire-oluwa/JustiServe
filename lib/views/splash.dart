import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:justiserve/constants.dart';
import 'package:justiserve/models/custom.text.dart';
import 'package:justiserve/models/svg_image.dart';

class Splash extends StatelessWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final controller = SplashController();
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            _buildCarousel(),
            Positioned(
              top: 379.h,
              left: 95.5.w,
              child: CustomText(
                text: "JustiServe",
                colour: Colors.black,
                weight: FontWeight.w700,
                size: 40.sp,
              ),
            ),
            Positioned(
              bottom: 40.h,
              left: 16.w,
              child: DotsIndicator(
                dotsCount: 3,
                // double
                // position: ,
                decorator: DotsDecorator(
                  // color: AppColours.primaryWhite,
                  // activeColor: AppColours.primaryWhite,
                  activeShape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(3.r)),
                  activeSize: Size(20.w, 8.h),
                ),
              ),
            ),
            Positioned(
              bottom: 40.h,
              right: 16.w,
              child: GestureDetector(
                // if current index is < 2, go to  sign_in screen else next page
                child: CustomText(
                  // if current index is equal to 2, change "skip" to "continue"
                  text: "Skip",
                  colour: AppColours.primaryCream,
                  weight: FontWeight.w400,
                  size: 24.sp,
                  style: FontStyle.italic,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCarousel() {
    return CarouselSlider(
      items: [
        Stack(
          children: [
            const SvgImage(imageLocation: "images/crying_woman.svg"),
            Positioned(
              top: 440.h,
              right: 10.w,
              child: CustomText(
                text:
                    "Break free from oppression, let Justiserve give\nyour voice legal representation.",
                colour: Colors.black,
                weight: FontWeight.w700,
                size: 16.sp,
              ),
            ),
          ],
        ),
        Stack(
          children: [
            const SvgImage(
              imageLocation: "images/manwithscale.svg",
            ),
            Positioned(
              top: 440.h,
              left: 40.w,
              child: CustomText(
                text: "Providing access to justice for Nigerians",
                colour: Colors.black,
                weight: FontWeight.w700,
                size: 16.sp,
              ),
            ),
          ],
        ),
        Stack(
          children: [
            const SvgImage(imageLocation: "images/endsars.svg"),
            Positioned(
              top: 440.h,
              right: 12.w,
              child: CustomText(
                text:
                    "Your voice is your power. Let JusticeServe amplify\nyour call for freedom and Justice",
                colour: Colors.black,
                weight: FontWeight.w700,
                size: 16.sp,
              ),
            ),
          ],
        ),
      ],
      options: CarouselOptions(
        // height: 667.h,
        aspectRatio: 375.w / 667.h,
        enableInfiniteScroll: false,
        viewportFraction: 1,
        onPageChanged: (index, reason) {},
      ),
    );
  }
}
