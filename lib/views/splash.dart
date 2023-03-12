import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:justiserve/constants.dart';
import 'package:justiserve/controllers/splash.controller.dart';
import 'package:justiserve/models/widgets/custom.text.dart';
import 'package:justiserve/models/widgets/svg_image.dart';
import 'package:justiserve/route/route.name.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Splash extends GetView<SplashController> {
  Splash({Key? key}) : super(key: key);

  SplashController splashController = Get.put(SplashController());
  PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: PageView.builder(
          controller: pageController,
          scrollDirection: Axis.horizontal,
          itemCount: 3,
          itemBuilder: (context, index) => Stack(
            children: [
              _buildCarousel(),
              Positioned(
                top: 379.h,
                left: 95.5.w,
                child: CustomText(
                  text: "JustiServe",
                  colour: AppColours.primaryWhite,
                  weight: FontWeight.w700,
                  size: 40.sp,
                ),
              ),
              Positioned(
                bottom: 40.h,
                left: 16.w,
                child: Obx(
                  () => AnimatedSmoothIndicator(
                    activeIndex: splashController.currentIntegerIndex.value,
                    count: 3,
                    effect: ExpandingDotsEffect(
                      dotColor: AppColours.primaryWhite,
                      activeDotColor: AppColours.primaryWhite,
                      expansionFactor: 2,
                      radius: 5.r,
                      dotWidth: 8.w,
                      dotHeight: 4.h,
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 34.h,
                right: 20.w,
                child: GestureDetector(
                  onTap: () {
                    Get.toNamed(RouteName.landingPage);
                  },
                  child: Obx(
                    () => CustomText(
                      // if current index is equal to 2, change "skip" to "continue"
                      text: splashController.currentIntegerIndex.value == 2
                          ? "Continue"
                          : "Skip",
                      colour: AppColours.primaryCream,
                      weight: FontWeight.w400,
                      size: 20.sp,
                      style: FontStyle.italic,
                    ),
                  ),
                ),
              ),
            ],
          ),
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
                colour: AppColours.primaryWhite,
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
                colour: AppColours.primaryWhite,
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
                colour: AppColours.primaryWhite,
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
        onPageChanged: (index, reason) {
          splashController.swipePage(index, reason);
        },
      ),
    );
  }
}
