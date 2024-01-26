import 'package:ebuy/utils/constants/image_strings.dart';
import 'package:ebuy/utils/constants/sizes.dart';
import 'package:ebuy/utils/constants/text_strings.dart';
import 'package:ebuy/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // horizontal scrollable pages
          PageView(
            children: [
              Column(
                children: [
                  Image(
                    width: EHelperFunctions.screenWidth() * 0.8,
                    height: EHelperFunctions.screenWidth() * 0.6,
                    image: const AssetImage(EImages.onBoardingImage1),
                  ),
                  Text(
                    ETexts.onBoardingTitle1,
                    style: Theme.of(context).textTheme.bodyLarge,
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: ESizes.spaceBtwItems),
                  Text(
                    ETexts.onBoardingSubTitle1,
                    style: Theme.of(context).textTheme.bodyMedium,
                    textAlign: TextAlign.center,
                  ),
                ],
              )
            ],
          )
          // skip button
          // Dot Navigation SmoothPageIndicator
          // Circular Button
        ],
      ),
    );
  }
}
