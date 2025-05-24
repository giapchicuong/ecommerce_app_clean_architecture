part of 'onboarding_bloc.dart';

abstract class OnBoardingEvent {}

class OnPageChanged extends OnBoardingEvent {
  final int page;

  OnPageChanged(this.page);
}

class OnNextPage extends OnBoardingEvent {}

class OnPrevPage extends OnBoardingEvent {}

class OnSkip extends OnBoardingEvent {}
