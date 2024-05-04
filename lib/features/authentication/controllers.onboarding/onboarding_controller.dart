import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoardingController extends GetxController {
  static OnBoardingController get instance => Get.find();

  //update current index when page scroll
// Variables
  final pageController = PageController();
  Rx<int> currentPageIndex = 0.obs;

  void updatePageIndicator(index) => currentPageIndex.value = index;
  void dotNavigationClick(index) {
    currentPageIndex.value = index;
    pageController.jumpTo(index);
  }

  // update current index and got to the next pagex

  void nextPage() {
    if (currentPageIndex.value == 2) {
    } else {
      int page = currentPageIndex.value + 1;
      pageController.jumpToPage(page);
    }
  }

  // update current index and got to the last page
  void skipPage() {
    currentPageIndex.value = 2;
    pageController.jumpToPage(2);
    // Debug output
    print("Skipped to the last page");
    // Debug output current index
    print("Current Index: ${currentPageIndex.value}");
  }
}
