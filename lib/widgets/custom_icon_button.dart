import 'package:flutter/material.dart';
import 'package:eeva/core/app_export.dart';

class CustomIconButton extends StatelessWidget {
  CustomIconButton(
      {this.alignment,
      this.margin,
      this.width,
      this.height,
      this.icon,
      this.background,
      required this.title,
      this.onTap});

  Alignment? alignment;

  EdgeInsetsGeometry? margin;

  double? width;

  double? height;

  Widget? icon;
  Color? background;

  VoidCallback? onTap;

  String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        color: background ?? Color(0xff1958a3),
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 24.sp,
        vertical: 12.sp,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            title,
            style: TextStyle(
              color: Colors.white,
              fontSize: 16.sp,
              fontFamily: "Inter",
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(width: 10.sp),
          icon ?? SizedBox()
        ],
      ),
    );
  }
}
