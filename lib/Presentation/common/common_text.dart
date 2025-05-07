import 'package:flutter/material.dart';

class CommonText extends StatelessWidget {
  const CommonText({
    super.key,
    required this.text,
    required this.Styles,

    // this.fontSize,
    // this.fontWeight = FontWeight.normal,
    // this.color,
    // this.fontFamily = 'Poppins',
  });

  final String text;
  final TextStyle? Styles;
  // final double? fontSize;
  // final FontWeight fontWeight;
  // final Color? color;
  // final String fontFamily;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Styles ??
          TextStyle(
              // fontFamily: fontFamily,
              // fontSize: fontSize,
              // fontWeight: fontWeight,
              // color: color,
              ),
    );
  }
}
