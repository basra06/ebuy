import 'package:ebuy/utils/constants/sizes.dart';
import 'package:ebuy/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({
    super.key,
    required this.image,
    required this.title,
    required this.subTitle,
  });

  final String image, title, subTitle;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(ESizes.defaultSpace),
      child: Column(
        children: [
          Image(
            width: EHelperFunctions.screenWidth() * 0.8,
            height: EHelperFunctions.screenHeight() * 0.6,
            image: AssetImage(image),
          ),
          Text(
            textAlign: TextAlign.center,
            title,
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          const SizedBox(height: ESizes.spaceBtwItems),
          Text(
            subTitle,
            style: Theme.of(context).textTheme.bodyMedium,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
