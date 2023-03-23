import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';

import '../core/app_export.dart';

class Mission extends StatelessWidget {
  const Mission({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 120).r,
      padding: EdgeInsets.all(64).r,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.w),
          color: ColorConstant.gray100),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            flex: 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Bối Cảnh & Nhiệm Vụ',
                  style: TextStyleValue().interBold64px,
                ),
                RSizedBox.square(dimension: 32.w),
                Text(
                  'content3'.tr,
                  style: TextStyleValue().medium16,
                ),
              ],
            ),
          ),
          SizedBox(
            width: 104.w,
          ),
          Expanded(
            flex: 4,
            child: IntrinsicHeight(
              child: Row(
                children: [
                  buildMissionItem(context,
                      title: 'MEGAWATT (MW) ĐƯỢC TRIỂN KHAI', content: '400'),
                  SizedBox(
                    width: 64.w,
                  ),
                  buildMissionItem(context,
                      title: 'TRIỆU ĐÔ LA ĐẦU TƯ ĐƯỢC HUY ĐỘNG',
                      content: '600'),
                  SizedBox(
                    width: 64.w,
                  ),
                  buildMissionItem(context,
                      title:
                      'GIẢI PHÁP ĐƯỢC TRÌNH DIỄN THÍ ĐIỂM/THƯƠNG MẠI HÓA',
                      content: '>20'),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget buildMissionItem(BuildContext context,
      {String title = '', String content = ''}) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.all(24.w),
        decoration: BoxDecoration(
            color: ColorConstant.whiteA700,
            borderRadius: BorderRadius.circular(12.w)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SvgPicture.asset(
              ImageConstant.imgArrowleft,
              width: 72.w,
              height: 72.w,
            ),
            Text(
              content,
              style: TextStyleValue().interBold64px.copyWith(
                  fontSize: 96.sp, color: ColorConstant.lightGreen500),
            ),
            Text(
              title,
              style: TextStyleValue().interBold20px,
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
    );
  }
}
