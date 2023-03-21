import 'package:eeva/core/app_export.dart';
import 'package:flutter/material.dart';

import 'color_constant.dart';

class TextStyleValue {
  TextStyleValue();

  static const String fontBold = "Inter-Bold";
  static const String fontSemiBold = "Inter-SemiBold";
  static const String fontMedium = "Inter-Medium";

  TextStyle textStyle({
    double? height,
    double? letterSpacing,
    double? fontSize,
    String? fontFamily,
    Color? color,
  }) =>
      TextStyle(
          color: color ?? ColorConstant.gray900,
          fontFamily: fontFamily ?? fontMedium,
          fontSize: fontSize ?? 15.sp,
          letterSpacing: 1.sp,
          height: 20.sp,
          fontWeight: FontWeight.w500);

  // Style Heading

  TextStyle interBold64px = TextStyle(
      color: ColorConstant.defaultColor,
      fontSize: 64.sp,
      fontFamily: fontBold);

  TextStyle interBold20px = TextStyle(
      color: ColorConstant.defaultColor,
      fontSize: 20.sp,
      fontFamily: fontBold);

  TextStyle interBold16px = TextStyle(
      color: ColorConstant.defaultColor,
      fontSize: 20.sp,
      fontFamily: fontBold);

  TextStyle interSemiBold24px = TextStyle(
      color: ColorConstant.defaultColor,
      fontSize: 24.sp,
      fontFamily: fontSemiBold);

  TextStyle interSemiBold14px = TextStyle(
      color: ColorConstant.defaultColor,
      fontSize: 14.sp,
      fontFamily: fontSemiBold);

  TextStyle medium16 = TextStyle(
      color: ColorConstant.gray800,
      fontSize: 16.sp,
      fontFamily: fontMedium);
}
