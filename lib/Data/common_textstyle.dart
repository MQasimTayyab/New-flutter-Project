import 'package:flutter/material.dart';
import 'package:flutter_proj/Data/app_color.dart';

extension TextScaler on BuildContext {
  double get textScaleFactor {
    final Textscale = MediaQuery.of(this).textScaleFactor;
    return Textscale > 1 ? 0.9 : Textscale;
  }
}

class Styles {
  static TextStyle textstyleHeaderone(
    BuildContext context, {
    double? fontSize,
    Color? color,
    FontWeight? fontWeight,
    String? fontFamily,
  }) {
    final double screenWidth = MediaQuery.of(context).size.width;

    // final double textscaleFactor = MediaQuery.of(context).textScaleFactor;

    return TextStyle(
      fontSize: fontSize ?? screenWidth * 0.04,
      // fontSize: fontSize ?? 16.0 * textscaleFactor,
      color: color ?? AppColor.black,
      fontWeight: fontWeight ?? FontWeight.bold,
      fontFamily: fontFamily ?? 'Poppins',
    );
  }

  static TextStyle textstyleHeadertwo(
    BuildContext context, {
    double? fontSize,
    Color? color,
    FontWeight? fontWeight,
    String? fontFamily,
  }) {
    final double screenWidth = MediaQuery.of(context).size.width;
    // final double textscaleFactor = MediaQuery.of(context).textScaleFactor;
    return TextStyle(
      fontSize: fontSize ?? screenWidth * 0.035,
      // fontSize: 14.0 * textscaleFactor,
      color: color ?? AppColor.black,
      fontWeight: fontWeight ?? FontWeight.w500,
      fontFamily: fontFamily ?? 'Poppins',
    );
  }

  static TextStyle textstyleHeaderthree(
    BuildContext context, {
    double? fontSize,
    Color? color,
    FontWeight? fontWeight,
    String? fontFamily,
  }) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double textscaleFactor = MediaQuery.of(context).textScaleFactor;
    return TextStyle(
      fontSize: fontSize ?? screenWidth * 0.025,
      // fontSize: 10.0 * textscaleFactor,
      color: color ?? AppColor.black,
      fontWeight: fontWeight ?? FontWeight.w500,
      fontFamily: fontFamily ?? 'Poppins',
    );
  }

  static TextStyle textstyleHeaderfour(
    BuildContext context, {
    double? fontSize,
    Color? color,
    FontWeight? fontWeight,
    String? fontFamily,
  }) {
    final double screenWidth = MediaQuery.of(context).size.width;
    return TextStyle(
      fontSize: fontSize ?? screenWidth * 0.03,
      color: color ?? AppColor.black,
      fontWeight: fontWeight ?? FontWeight.normal,
      fontFamily: fontFamily ?? 'Poppins',
    );
  }

  static TextStyle textstyleHeaderfive(
    BuildContext context, {
    double? fontSize,
    Color? color,
    FontWeight? fontWeight,
    String? fontFamily,
  }) {
    final double screenWidth = MediaQuery.of(context).size.width;
    return TextStyle(
      fontSize: fontSize ?? screenWidth * 0.02,
      color: color ?? AppColor.black,
      fontWeight: fontWeight ?? FontWeight.w100,
      fontFamily: fontFamily ?? 'Poppins',
    );
  }

  static TextStyle textstyleHeadersix(
    BuildContext context, {
    double? fontSize,
    Color? color,
    FontWeight? fontWeight,
    String? fontFamily,
  }) {
    final double screenWidth = MediaQuery.of(context).size.width;
    return TextStyle(
      fontSize: fontSize ?? screenWidth * 0.016,
      color: color ?? AppColor.black,
      fontWeight: fontWeight ?? FontWeight.w300,
      fontFamily: fontFamily ?? 'Poppins',
    );
  }

  static TextStyle textstyleHeaderseven(
    BuildContext context, {
    double? fontSize,
    Color? color,
    FontWeight? fontWeight,
    String? fontFamily,
  }) {
    final double screenWidth = MediaQuery.of(context).size.width;
    return TextStyle(
      fontSize: fontSize ?? screenWidth * 0.028,
      color: color ?? AppColor.black,
      fontWeight: fontWeight ?? FontWeight.w500,
      fontFamily: fontFamily ?? 'Poppins',
    );
  }
}
