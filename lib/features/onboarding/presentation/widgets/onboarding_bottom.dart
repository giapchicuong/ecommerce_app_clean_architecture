import 'package:ecommerce_app/config/extensions/extension.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../config/theme/app_colors.dart';
import '../../../../core/constants/sizes.dart';
import '../../../../core/constants/text_strings.dart';

class OnBoardingBottom extends StatelessWidget {
  const OnBoardingBottom(
      {super.key,
      required this.onTapNext,
      required this.onTapPrev,
      required this.isShowTextPrev,
      required this.isShowTextNext,
      required this.controller});
  final VoidCallback onTapNext;
  final VoidCallback onTapPrev;
  final bool isShowTextPrev;
  final bool isShowTextNext;
  final PageController controller;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 0,
      right: 0,
      bottom: AppSizes.md,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: AppSizes.md),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            isShowTextPrev
                ? InkWell(
                    onTap: onTapPrev,
                    child: Text(
                      AppTexts.prev,
                      style: context.text.titleSmall!.copyWith(
                        fontWeight: FontWeight.w800,
                        color: AppColors.grey2,
                      ),
                    ),
                  )
                : const SizedBox(width: 40),
            SmoothPageIndicator(
              controller: controller,
              count: 3,
              effect: const ExpandingDotsEffect(
                dotColor: AppColors.grey2,
                activeDotColor: AppColors.blue1,
                dotHeight: 9,
                dotWidth: 9,
                expansionFactor: 5,
                spacing: 10,
              ),
            ),
            InkWell(
              onTap: isShowTextNext ? onTapNext : () {},
              child: Text(
                isShowTextNext ? AppTexts.next : AppTexts.getStarted,
                style: const TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 14,
                  color: AppColors.primary,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
