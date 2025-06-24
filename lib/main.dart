import 'package:ecommerce_app/config/theme/app_theme.dart';
import 'package:ecommerce_app/features/get_started/presentation/get_started.dart';
import 'package:ecommerce_app/injection_container.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
  setupServiceLocator();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      home: const GetStarted(),
    );
  }
}
