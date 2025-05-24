import 'package:ecommerce_app/common/widgets/images/custom_app_images.dart';
import 'package:ecommerce_app/core/constants/images.dart';
import 'package:flutter/material.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: CustomAppImages(name: AppImages.logo),
      ),
    );
  }
}
