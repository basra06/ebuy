import 'package:ebuy/features/authentication/controllers.onboarding/onboarding_controller.dart';
import 'package:ebuy/utils/constants/colors.dart';
import 'package:ebuy/utils/constants/sizes.dart';
import 'package:ebuy/utils/device/device_utility.dart';
import 'package:ebuy/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class OnBoardingNextButton extends StatelessWidget {
  const OnBoardingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = EHelperFunctions.isDarkMode(context);
    return Positioned(
        right: ESizes.defaultSpace,
        bottom: EDeviceUtils.getBottomNavigationBarHeight(),
        child: ElevatedButton(
          onPressed: () {
            OnBoardingController.instance.nextPage();
          },
          style: ElevatedButton.styleFrom(
              shape: const CircleBorder(),
              backgroundColor:
                  dark ? TColors.textPrimary : TColors.buttonPrimary),
          child: const Icon(Iconsax.arrow_right_3),
        ));
  }
}
