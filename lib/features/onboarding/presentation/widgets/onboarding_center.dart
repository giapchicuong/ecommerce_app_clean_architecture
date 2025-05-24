import 'package:ecommerce_app/config/extensions/extension.dart';
import 'package:ecommerce_app/config/theme/app_colors.dart';
import 'package:flutter/material.dart';

import '../../../../common/widgets/images/custom_app_images.dart';
import '../../../../core/constants/sizes.dart';

class OnBoardingCenter extends StatelessWidget {
  const OnBoardingCenter({
    super.key,
    required this.title,
    required this.description,
    required this.image,
  });
  final String title, description, image;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: AppSizes.md,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomAppImages(
            name: image,
            width: 300,
            height: 300,
          ),
          const SizedBox(height: AppSizes.sm),
          Text(
            title,
            textAlign: TextAlign.center,
            style: context.text.headlineMedium!
                .copyWith(fontWeight: FontWeight.w800),
          ),
          const SizedBox(height: AppSizes.xs),
          Text(
            description,
            textAlign: TextAlign.center,
            style: context.text.bodyMedium!.copyWith(color: AppColors.grey2),
          ),
        ],
      ),
    );
  }
}
