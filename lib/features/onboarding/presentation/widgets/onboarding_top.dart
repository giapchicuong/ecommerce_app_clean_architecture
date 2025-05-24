import 'package:ecommerce_app/config/extensions/extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../config/theme/app_colors.dart';
import '../../../../core/constants/sizes.dart';
import '../../../../core/constants/text_strings.dart';
import '../../bloc/onboarding_bloc.dart';

class OnBoardingTop extends StatelessWidget {
  const OnBoardingTop({super.key});

  @override
  Widget build(BuildContext context) {
    final onboardingBloc = context.read<OnBoardingBloc>();
    final onboardingState = context.watch<OnBoardingBloc>().state;
    final int currentPage = onboardingState.currentPage + 1;
    final int totalPages = onboardingBloc.totalPage;

    final textStyle =
        context.text.titleMedium!.copyWith(fontWeight: FontWeight.w800);
    final textStyleGrey = textStyle.copyWith(color: AppColors.grey2);

    void handleSkip() => onboardingBloc.add(OnSkip());

    return Positioned(
      left: 0,
      right: 0,
      top: AppSizes.md,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: AppSizes.md),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(text: '$currentPage', style: textStyle),
                  TextSpan(text: '/$totalPages', style: textStyleGrey),
                ],
              ),
            ),
            TextButton(
              onPressed: handleSkip,
              style: TextButton.styleFrom(
                minimumSize: Size.zero,
                padding: EdgeInsets.zero,
              ),
              child: Text(AppTexts.skip, style: textStyle),
            ),
          ],
        ),
      ),
    );
  }
}
