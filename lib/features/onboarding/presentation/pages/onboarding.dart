import 'package:ecommerce_app/core/constants/images.dart';
import 'package:ecommerce_app/core/constants/text_strings.dart';
import 'package:flutter/material.dart';

import '../widgets/onboarding_bottom.dart';
import '../widgets/onboarding_center.dart';
import '../widgets/onboarding_top.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController();
    final int totalPages = 3;
    final ValueNotifier<int> currentPageNotifier = ValueNotifier<int>(0);

    void handleUpdateCurrentPage(int page) {
      currentPageNotifier.value = page;
    }

    void animateToPage(int page) {
      controller.animateToPage(
        page,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
      handleUpdateCurrentPage(page);
    }

    void handleSkip() {
      controller.animateToPage(
        totalPages - 1,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }

    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            PageView(
              controller: controller,
              onPageChanged: handleUpdateCurrentPage,
              children: [
                OnBoardingCenter(
                  title: AppTexts.onBoardingTitle1,
                  description: AppTexts.onBoardingDescription,
                  image: AppImages.onBoarding1,
                ),
                OnBoardingCenter(
                  title: AppTexts.onBoardingTitle2,
                  description: AppTexts.onBoardingDescription,
                  image: AppImages.onBoarding3,
                ),
                OnBoardingCenter(
                  title: AppTexts.onBoardingTitle3,
                  description: AppTexts.onBoardingDescription,
                  image: AppImages.onBoarding3,
                ),
              ],
            ),
            ValueListenableBuilder<int>(
              valueListenable: currentPageNotifier,
              builder: (context, currentPage, child) {
                return Stack(
                  children: [
                    OnBoardingTop(
                      totalPage: totalPages,
                      currentPage: currentPage + 1,
                      onSkip: handleSkip,
                    ),
                    OnBoardingBottom(
                      onTapNext: () => animateToPage(currentPage + 1),
                      onTapPrev: () => animateToPage(currentPage - 1),
                      isShowTextPrev: currentPage > 0,
                      isShowTextNext: currentPage < totalPages - 1,
                      controller: controller,
                    ),
                  ],
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
