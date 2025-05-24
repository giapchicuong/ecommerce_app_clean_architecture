import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../injection_container.dart';
import '../../bloc/onboarding_bloc.dart';
import '../widgets/onboarding_bottom.dart';
import '../widgets/onboarding_pageview.dart';
import '../widgets/onboarding_top.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => sl<OnBoardingBloc>(),
      child: Scaffold(
        body: SafeArea(
          child: BlocBuilder<OnBoardingBloc, OnBoardingState>(
            builder: (context, state) {
              return const Stack(
                children: [
                  OnBoardingPageView(),
                  OnBoardingTop(),
                  OnBoardingBottom(),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
