import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CommonSvg extends StatelessWidget {
  const CommonSvg({
    super.key,
    required this.svgPath,
    required this.screenWidth,
    required this.screenHeight,
    this.svgcolor,
  });

  final double screenWidth;
  final double screenHeight;
  final String svgPath;
  final Color? svgcolor;
  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      svgPath,
      width: screenWidth,
      height: screenHeight,
      color: svgcolor,
    );
  }
}
