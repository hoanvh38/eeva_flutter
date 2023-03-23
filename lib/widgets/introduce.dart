import 'package:eeva/core/app_export.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';

import 'custom_icon_button.dart';

class Introduce extends StatelessWidget {
  const Introduce({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 120.w),
      padding: EdgeInsets.symmetric(vertical: 48.w),
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(width: 1.0.w, color: ColorConstant.diveded),
          bottom: BorderSide(width: 1.0.w, color: ColorConstant.diveded),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            flex: 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              children: [
                Text(
                  'Giới Thiệu EEA Hồ Chí Minh',
                  style: TextStyleValue().interBold64px,
                ),
                SizedBox(height: 32.w),
                CustomIconButton(
                  title: 'Xem tiếp',
                  icon: SvgPicture.asset(
                    ImageConstant.imgArrowright,
                    fit: BoxFit.contain,
                    width: 24.w,
                  ),
                )
              ],
            ),
          ),
          Expanded(flex: 1, child: SizedBox()),
          Expanded(
            flex: 4,
            child: Text(
              '${'content1'.tr} \n \n ${'content2'.tr}',
              style: TextStyleValue().medium16,
            ),
          )
        ],
      ),
    );
  }
}
