part of 'onboarding_bloc.dart';

class OnBoardingState extends Equatable {
  final int currentPage;

  const OnBoardingState({required this.currentPage});

  OnBoardingState copyWith({
    int? currentPage,
  }) {
    return OnBoardingState(
      currentPage: currentPage ?? this.currentPage,
    );
  }

  @override
  List<Object?> get props => [currentPage];
}
