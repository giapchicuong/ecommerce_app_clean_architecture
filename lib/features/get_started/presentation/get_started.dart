import 'package:ecommerce_app/common/widgets/images/custom_app_images.dart';
import 'package:ecommerce_app/config/theme/app_colors.dart';
import 'package:ecommerce_app/core/constants/images.dart';
import 'package:ecommerce_app/core/constants/text_strings.dart';
import 'package:flutter/material.dart';

import '../../../core/constants/sizes.dart';

class GetStarted extends StatelessWidget {
  const GetStarted({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const Positioned.fill(
            child: CustomAppImages(
              isSvg: false,
              name: AppImages.getStartedBanner,
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            top: MediaQuery.of(context).size.height * 0.45,
            child: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  stops: [0.0, 0.24],
                  colors: [
                    Color.fromRGBO(0, 0, 0, 0.0),
                    Color.fromRGBO(0, 0, 0, 0.4),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
              left: 0,
              right: 0,
              bottom: MediaQuery.of(context).size.height * 0.1,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: AppSizes.xl),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      AppTexts.getStartedTitle,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: AppColors.white,
                        fontSize: 34,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: AppSizes.sm),
                    const Text(
                      AppTexts.getStartedContent,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: AppColors.grey6,
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: AppSizes.xxl),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: const Text(
                          AppTexts.getStarted,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: AppColors.white,
                            fontSize: 23,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
