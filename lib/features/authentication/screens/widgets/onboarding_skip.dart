import 'package:ebuy/features/authentication/controllers.onboarding/onboarding_controller.dart';
import 'package:ebuy/utils/constants/sizes.dart';
import 'package:ebuy/utils/device/device_utility.dart';
import 'package:flutter/material.dart';

class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: EDeviceUtils.getAppBarHeight(),
      right: ESizes.defaultSpace,
      child: TextButton(
          onPressed: () => {OnBoardingController.instance.skipPage()},
          child: const Text(
            'Skip',
            style: TextStyle(fontSize: 18),
          )),
    );
  }
}
