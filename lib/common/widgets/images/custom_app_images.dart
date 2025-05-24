import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';

enum ImageSourceType { asset, network }

class CustomAppImages extends StatelessWidget {
  final String name;
  final bool isSvg;
  final double? width;
  final double? height;
  final ImageSourceType sourceType;

  const CustomAppImages({
    super.key,
    required this.name,
    this.isSvg = true,
    this.width,
    this.height,
    this.sourceType = ImageSourceType.asset,
  });

  @override
  Widget build(BuildContext context) {
    if (sourceType == ImageSourceType.network) {
      return CachedNetworkImage(
        imageUrl: name,
        width: width,
        height: height,
        fit: BoxFit.cover,
        placeholder: (context, url) =>
            const Center(child: CircularProgressIndicator()),
        errorWidget: (context, url, error) => const Icon(Icons.error),
      );
    } else {
      if (isSvg) {
        return SvgPicture.asset(
          name,
          width: width,
          height: height,
        );
      } else {
        return Image.asset(
          name,
          width: width,
          height: height,
          fit: BoxFit.cover,
        );
      }
    }
  }
}
