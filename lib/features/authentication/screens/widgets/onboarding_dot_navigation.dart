import 'package:ebuy/features/authentication/controllers.onboarding/onboarding_controller.dart';
import 'package:ebuy/utils/constants/colors.dart';
import 'package:ebuy/utils/constants/sizes.dart';
import 'package:ebuy/utils/device/device_utility.dart';
import 'package:ebuy/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingDotNavigation extends StatelessWidget {
  const OnBoardingDotNavigation({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    final controller = OnBoardingController.instance;
    final dark = EHelperFunctions.isDarkMode(context);

    return Positioned(
        bottom: EDeviceUtils.getBottomNavigationBarHeight() + 25,
        left: ESizes.defaultSpace,
        child: SmoothPageIndicator(
          controller: controller.pageController,
          onDotClicked: controller.dotNavigationClick,
          count: 3,
          effect: ExpandingDotsEffect(
              activeDotColor: dark ? TColors.dark : TColors.light,
              dotHeight: 6),
        ));
  }
}
