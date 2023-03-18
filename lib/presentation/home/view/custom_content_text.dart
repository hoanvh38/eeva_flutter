import 'package:eeva/core/app_export.dart';
import 'package:flutter/cupertino.dart';

class CustomContentText extends StatelessWidget {
  final String? title;
  final Color? colorRectangle;
  final double? height;
  final double? width;

  CustomContentText({this.title, this.colorRectangle, this.height, this.width});

  @override
  Widget build(BuildContext context) {
    return title != ''
        ? Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding:  EdgeInsets.only(left: 120.w),
                child: Text(
                  title ?? '',
                  style: TextStyleValue().interBold64px,
                ),
              ),
              Image.asset(
                ImageConstant.imgvector,
                height: height ?? 48.w,
                width: width ?? 700.w,
                color:
                    colorRectangle ?? ColorConstant.primary1.withOpacity(0.2),
              )
            ],
          )
        : Image.asset(
            ImageConstant.imgvector,
            height: height ?? 48.w,
            width: width ?? 700.w,
            color: colorRectangle ?? ColorConstant.primary1.withOpacity(0.2),
          );
  }
}
