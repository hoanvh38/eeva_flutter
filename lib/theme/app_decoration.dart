import 'package:flutter/material.dart';
import 'package:eeva/core/app_export.dart';

class AppDecoration {
  static BoxDecoration get outlineBluegray200 => BoxDecoration(
        color: ColorConstant.gray50,
        border: Border.all(
          color: ColorConstant.blueGray200,
          width: getHorizontalSize(
            1,
          ),
        ),
      );
  static BoxDecoration get outlineBluegray2001 => BoxDecoration(
        border: Border.all(
          color: ColorConstant.blueGray200,
          width: getHorizontalSize(
            1,
          ),
        ),
      );
  static BoxDecoration get outlineGray200 => BoxDecoration(
        border: Border.all(
          color: ColorConstant.gray200,
          width: getHorizontalSize(
            1,
          ),
        ),
      );
  static BoxDecoration get fillYellow8006c => BoxDecoration(
        color: ColorConstant.yellow8006c,
      );
  static BoxDecoration get gradientLightgreen200Teal200 => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(
            0,
            1,
          ),
          end: Alignment(
            1,
            0.13,
          ),
          colors: [
            ColorConstant.lightGreen200,
            ColorConstant.teal200,
          ],
        ),
      );
  static BoxDecoration get fillGray100 => BoxDecoration(
        color: ColorConstant.gray100,
      );
  static BoxDecoration get fillGreen50 => BoxDecoration(
        color: ColorConstant.green50,
      );
  static BoxDecoration get fillWhiteA700 => BoxDecoration(
        color: ColorConstant.whiteA700,
      );
  static BoxDecoration get fillGray90001 => BoxDecoration(
        color: ColorConstant.gray90001,
      );
  static BoxDecoration get fillGray900bf => BoxDecoration(
        color: ColorConstant.gray900Bf,
      );
  static BoxDecoration get fillBlue9006c => BoxDecoration(
        color: ColorConstant.blue9006c,
      );
}

class BorderRadiusStyle {
  static BorderRadius roundedBorder12 = BorderRadius.circular(
    getHorizontalSize(
      12,
    ),
  );
}
