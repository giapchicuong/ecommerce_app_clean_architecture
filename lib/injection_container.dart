import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import 'features/onboarding/bloc/onboarding_bloc.dart';

final sl = GetIt.instance;

void setupServiceLocator() {
  sl.registerLazySingleton<PageController>(() => PageController());

  sl.registerFactory<OnBoardingBloc>(
      () => OnBoardingBloc(pageController: sl<PageController>()));
}
