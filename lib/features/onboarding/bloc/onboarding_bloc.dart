import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'onboarding_event.dart';
part 'onboarding_state.dart';

class OnBoardingBloc extends Bloc<OnBoardingEvent, OnBoardingState> {
  final PageController pageController;
  final int totalPage = 3;

  OnBoardingBloc({required this.pageController})
      : super(const OnBoardingState(currentPage: 0)) {
    on<OnPageChanged>(_onPageChanged);
    on<OnNextPage>(_onNextPage);
    on<OnPrevPage>(_onPrevPage);
    on<OnSkip>(_onSkip);
  }
  void _onPageChanged(event, emit) {
    emit(state.copyWith(currentPage: event.page));
  }

  void _onNextPage(event, emit) {
    final nextPage = state.currentPage + 1;
    if (nextPage < totalPage) {
      pageController.animateToPage(
        nextPage,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
      emit(state.copyWith(currentPage: nextPage));
    }
  }

  void _onPrevPage(event, emit) {
    final prevPage = state.currentPage - 1;
    if (prevPage >= 0) {
      pageController.animateToPage(
        prevPage,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
      emit(state.copyWith(currentPage: prevPage));
    }
  }

  void _onSkip(event, emit) {
    final lastPage = totalPage - 1;
    pageController.animateToPage(
      lastPage,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
    emit(state.copyWith(currentPage: lastPage));
  }
}
