import 'package:ebuy/features/authentication/controllers.onboarding/onboarding_controller.dart';
import 'package:ebuy/features/authentication/screens/widgets/onboarding_dot_navigation.dart';
import 'package:ebuy/features/authentication/screens/widgets/onboarding_next_button.dart';
import 'package:ebuy/features/authentication/screens/widgets/onboarding_page.dart';
import 'package:ebuy/features/authentication/screens/widgets/onboarding_skip.dart';
import 'package:ebuy/utils/constants/image_strings.dart';
import 'package:ebuy/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());
    return Scaffold(
      body: Stack(
        children: [
          // horizontal scrollable pages
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              OnBoardingPage(
                image: EImages.onBoardingImage1,
                title: ETexts.onBoardingTitle1,
                subTitle: ETexts.onBoardingSubTitle1,
              ),
              OnBoardingPage(
                image: EImages.onBoardingImage2,
                title: ETexts.onBoardingTitle2,
                subTitle: ETexts.onBoardingSubTitle2,
              ),
              OnBoardingPage(
                image: EImages.onBoardingImage3,
                title: ETexts.onBoardingTitle3,
                subTitle: ETexts.onBoardingSubTitle3,
              ),
            ],
          ),
          // skip button
          const OnBoardingSkip(),
          // Dot Navigation SmoothPageIndicator
          const OnBoardingDotNavigation(),
          // Circular Button
          const OnBoardingNextButton(),
        ],
      ),
    );
  }
}
