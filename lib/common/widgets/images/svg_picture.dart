import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomAppImages extends StatelessWidget {
  final bool isSvg;
  const CustomAppImages({super.key, required this.name, this.isSvg = true});
  final String name;

  @override
  Widget build(BuildContext context) {
    return isSvg
        ? SvgPicture.asset(
            name,
          )
        : Image.asset(
            name,
            fit: BoxFit.cover,
          );
  }
}
