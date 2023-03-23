import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:eeva/core/app_export.dart';
import 'package:eeva/data/models/posts_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../core/utils/color_constant.dart';
import '../core/utils/text_style.dart';

class DropButton extends StatelessWidget {
  String title;
  String? selectedValue;
  final List<PostModel> listPost;

  DropButton({required this.title, required this.listPost});

  @override
  Widget build(BuildContext context) {
    print(listPost.length);
    return DropdownButtonHideUnderline(
      child: DropdownButton2(
        isExpanded: true,
        hint: Text(
          title,
          style: TextStyleValue()
              .interBold16pxCt
              .copyWith(color: ColorConstant.whiteA700),
          overflow: TextOverflow.ellipsis,
        ),
        items: listPost
            .map((item) => DropdownMenuItem<String>(
                  value: item.title,
                  child: Text(
                    item.title,
                    style: TextStyleValue().smallBold,
                    overflow: TextOverflow.ellipsis,
                  ),
                ))
            .toList(),
        value: selectedValue,
        onChanged: (value) {
          // setState(() {
          //   selectedValue = value as String;
          // });
        },
        buttonStyleData: ButtonStyleData(
          height: 50.w,
          width: 140.w,
          padding: EdgeInsets.only(left: 14.w, right: 10.w),
          elevation: 1,
        ),
        iconStyleData: IconStyleData(
          icon: Icon(
            Iconsax.arrow_down_1,
            size: 16.w,
          ),
          iconSize: 16.w,
          iconEnabledColor: ColorConstant.whiteA700,
          iconDisabledColor: Colors.grey,
        ),
        dropdownStyleData: DropdownStyleData(
          maxHeight: 200,
          width: 228,
          padding: null,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.w),
            color: ColorConstant.neutral8,
          ),
          elevation: 8,
          offset: const Offset(-20, 0),
          scrollbarTheme: ScrollbarThemeData(
            radius: const Radius.circular(40),
            thickness: MaterialStateProperty.all<double>(6),
            thumbVisibility: MaterialStateProperty.all<bool>(true),
          ),
        ),
        menuItemStyleData: const MenuItemStyleData(
          height: 40,
          padding: EdgeInsets.only(left: 14, right: 14),
        ),
      ),
    );
  }
}
