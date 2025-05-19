import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AssetImages extends StatelessWidget {
  const AssetImages({
    super.key,
    this.imagepath = '',
    this.issvg = true,
    required this.screenHeight,
    required this.screenWidth,
  });
  final String imagepath;
  final bool issvg;

  final double screenHeight;
  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    if (issvg) {
      return SvgPicture.asset(
        imagepath,
        height: screenHeight,
        width: screenWidth,
        fit: BoxFit.contain,
      );
    } else {
      return Image.asset(
        imagepath,
        height: screenHeight,
        width: screenWidth,
        fit: BoxFit.contain,
      );
    }
  }
}
