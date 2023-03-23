import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:eeva/core/app_export.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:iconsax/iconsax.dart';

import 'drop_button.dart';

class Menu extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 120.w, vertical: 24.w),
      width: double.infinity,
      color: ColorConstant.defaultColor.withOpacity(0.75),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          FlutterLogo(
            size: 100.w,
          ),
          SizedBox(
            width: 239.w,
          ),
          Expanded(child: buildMenu(context)),
          buildInfo(context)
        ],
      ),
    );
  }

  Widget buildMenu(BuildContext context) {
    return Row(
      children: [
        menuItems(context, title: 'Trang chủ'),
        DropButton(
          title: 'Giới thiệu',
          listPost: controller.listIntroduce,
        ),
        SizedBox(
          width: 32.w,
        ),
        DropButton(
          title: 'Quy chế',
          listPost: controller.listIntroduce.value,
        ),
        SizedBox(
          width: 32.w,
        ),
        menuItems(context, title: 'Tin tức & Hoạt động'),
        menuItems(context, title: 'Liên hệ'),
      ],
    );
  }

  Widget menuItems(BuildContext context,
      {String title = '', isDropdown = false}) {
    return Container(
      margin: EdgeInsets.only(right: 52.w),
      child: isDropdown == true
          ? Row(
              children: [
                Text(
                  title,
                  style: TextStyleValue()
                      .interBold16pxCt
                      .copyWith(color: ColorConstant.whiteA700),
                ),
                SizedBox(
                  width: 10.w,
                ),
                Icon(
                  Iconsax.arrow_down_1,
                  size: 16.w,
                  color: ColorConstant.whiteA700,
                )
              ],
            )
          : Text(
              title,
              style: TextStyleValue()
                  .interBold16pxCt
                  .copyWith(color: ColorConstant.whiteA700),
            ),
    );
  }

  Widget buildInfo(BuildContext context) {
    return Row(
      children: [
        Text(
          'Hotline: 0236.3896668',
          style: TextStyleValue()
              .interSemiBold14px
              .copyWith(color: ColorConstant.neutral8),
        ),
        SizedBox(
          width: 32.w,
        ),
        Container(
          padding: EdgeInsets.symmetric(vertical: 12.w, horizontal: 24.w),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6.w),
              color: ColorConstant.primary2),
          child: Row(
            children: [
              Icon(
                Iconsax.note_1,
                size: 24.w,
                color: ColorConstant.whiteA700,
              ),
              SizedBox(
                width: 10.w,
              ),
              Text(
                'Nộp hồ sơ',
                style: TextStyleValue()
                    .interBold16pxCt
                    .copyWith(color: ColorConstant.whiteA700),
              ),
            ],
          ),
        )
      ],
    );
  }
}
