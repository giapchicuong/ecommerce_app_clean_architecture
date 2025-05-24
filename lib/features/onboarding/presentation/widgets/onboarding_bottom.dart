import 'package:ecommerce_app/config/extensions/extension.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../config/theme/app_colors.dart';
import '../../../../core/constants/sizes.dart';
import '../../../../core/constants/text_strings.dart';
import '../../bloc/onboarding_bloc.dart';

class OnBoardingBottom extends StatelessWidget {
  const OnBoardingBottom({super.key});

  @override
  Widget build(BuildContext context) {
    return const Positioned(
      left: 0,
      right: 0,
      bottom: AppSizes.md,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: AppSizes.md),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _LeftSide(),
            _PageIndicator(),
            _RightSide(),
          ],
        ),
      ),
    );
  }
}

class _LeftSide extends StatelessWidget {
  const _LeftSide();

  @override
  Widget build(BuildContext context) {
    return BlocSelector<OnBoardingBloc, OnBoardingState, bool>(
      selector: (state) => state.currentPage > 0,
      builder: (context, isShowTextPrev) {
        return isShowTextPrev ? const _PrevText() : const SizedBox(width: 40);
      },
    );
  }
}

class _PageIndicator extends StatelessWidget {
  const _PageIndicator();

  @override
  Widget build(BuildContext context) {
    final onboardingBloc = context.read<OnBoardingBloc>();
    return SmoothPageIndicator(
      controller: onboardingBloc.pageController,
      count: onboardingBloc.totalPage,
      effect: const ExpandingDotsEffect(
        dotColor: AppColors.grey2,
        activeDotColor: AppColors.blue1,
        dotHeight: 9,
        dotWidth: 9,
        expansionFactor: 5,
        spacing: 10,
      ),
    );
  }
}

class _RightSide extends StatelessWidget {
  const _RightSide();

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<OnBoardingBloc>();
    return BlocSelector<OnBoardingBloc, OnBoardingState, _RightAction>(
      selector: (state) => _RightAction(
        isShowNext: state.currentPage < bloc.totalPage - 1,
      ),
      builder: (context, action) {
        return InkWell(
          onTap: action.isShowNext ? () => bloc.add(OnNextPage()) : () {},
          child: Text(
            action.isShowNext ? AppTexts.next : AppTexts.getStarted,
            style: const TextStyle(
              fontWeight: FontWeight.w900,
              fontSize: 14,
              color: AppColors.primary,
            ),
          ),
        );
      },
    );
  }
}

class _RightAction extends Equatable {
  final bool isShowNext;

  const _RightAction({required this.isShowNext});

  @override
  List<Object> get props => [isShowNext];
}

class _PrevText extends StatelessWidget {
  const _PrevText();

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => context.read<OnBoardingBloc>().add(OnPrevPage()),
      child: Text(
        AppTexts.prev,
        style: context.text.titleSmall!.copyWith(
          fontWeight: FontWeight.w800,
          color: AppColors.grey2,
        ),
      ),
    );
  }
}
