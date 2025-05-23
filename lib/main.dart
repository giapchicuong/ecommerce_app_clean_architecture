import 'package:ecommerce_app/config/theme/app_theme.dart';
import 'package:ecommerce_app/features/splash/presentation/pages/splash.dart';
import 'package:flutter/material.dart';

import 'features/get_started/presentation/get_started.dart';
import 'features/onboarding/presentation/pages/onboarding.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      home: const OnBoarding(),
    );
  }
}
