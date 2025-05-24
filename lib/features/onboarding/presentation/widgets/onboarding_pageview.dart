import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/constants/images.dart';
import '../../../../core/constants/text_strings.dart';
import '../../bloc/onboarding_bloc.dart';
import 'onboarding_center.dart';

class OnBoardingPageView extends StatelessWidget {
  const OnBoardingPageView({super.key});

  void _handlePageChanged(BuildContext context, int page) {
    final onboardingBloc = context.read<OnBoardingBloc>();
    onboardingBloc.add(OnPageChanged(page));
  }

  @override
  Widget build(BuildContext context) {
    final onboardingBloc = context.read<OnBoardingBloc>();

    return PageView(
      physics: const BouncingScrollPhysics(),
      controller: onboardingBloc.pageController,
      onPageChanged: (page) => _handlePageChanged(context, page),
      children: const [
        OnBoardingCenter(
          title: AppTexts.onBoardingTitle1,
          description: AppTexts.onBoardingDescription,
          image: AppImages.onBoarding1,
        ),
        OnBoardingCenter(
          title: AppTexts.onBoardingTitle2,
          description: AppTexts.onBoardingDescription,
          image: AppImages.onBoarding2,
        ),
        OnBoardingCenter(
          title: AppTexts.onBoardingTitle3,
          description: AppTexts.onBoardingDescription,
          image: AppImages.onBoarding3,
        ),
      ],
    );
  }
}
