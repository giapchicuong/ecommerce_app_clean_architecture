import 'package:ecommerce_app/config/extensions/extension.dart';
import 'package:flutter/material.dart';

import '../../../../config/theme/app_colors.dart';
import '../../../../core/constants/sizes.dart';
import '../../../../core/constants/text_strings.dart';

class OnBoardingTop extends StatelessWidget {
  const OnBoardingTop(
      {super.key,
      required this.currentPage,
      required this.onSkip,
      required this.totalPage});
  final int currentPage;
  final int totalPage;
  final VoidCallback onSkip;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 0,
      right: 0,
      top: AppSizes.md,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: AppSizes.md),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            RichText(
                text: TextSpan(children: [
              TextSpan(
                text: '$currentPage',
                style: context.text.titleMedium!
                    .copyWith(fontWeight: FontWeight.w800),
              ),
              TextSpan(
                text: '/$totalPage',
                style: context.text.titleMedium!.copyWith(
                    fontWeight: FontWeight.w800, color: AppColors.grey2),
              )
            ])),
            InkWell(
              onTap: onSkip,
              child: Text(
                AppTexts.skip,
                style: context.text.titleMedium!
                    .copyWith(fontWeight: FontWeight.w800),
              ),
            )
          ],
        ),
      ),
    );
  }
}
