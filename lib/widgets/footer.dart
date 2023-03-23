import 'package:eeva/core/app_export.dart';
import 'package:flutter/cupertino.dart';

import '../core/utils/color_constant.dart';

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: ColorConstant.green50,
          padding: EdgeInsets.symmetric(horizontal: 120.w, vertical: 48.w),
          child: IntrinsicHeight(
            child: Row(
              children: [
                buildFooterContent1(context),
                Expanded(flex: 2, child: Container()),
                buildFooterContent2(context),
                SizedBox(
                  width: 64.w,
                ),
                buildFooterContent3(context)
              ],
            ),
          ),
        ),
        buildAccessTimes(context)
      ],
    );
  }

  Widget buildFooterContent1(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Column(
        children: [
          Text(
            'footer1'.tr,
            style: TextStyleValue().interSemiBold24px,
          ),
          SizedBox(
            height: 24.w,
          ),
          Text(
            'Website này thuộc bản quyền của Sở Công Thương thành phố Hồ Chí Minh, được xây dựng và duy trì với sự hỗ trợ của Cơ quan Phát triển Quốc tế Hoa Kỳ (USAID) trong khuôn khổ Dự án Hỗ trợ kỹ thuật An ninh năng lượng đô thị Việt Nam tại thành phố Hồ Chí Minh'
                .tr,
            style: TextStyleValue().medium16,
          ),
        ],
      ),
    );
  }

  Widget buildFooterContent2(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(bottom: 21.w),
            margin: EdgeInsets.only(bottom: 21.w),
            decoration: BoxDecoration(
                border: Border(
                    bottom: BorderSide(color: ColorConstant.blueGray400))),
            child: Text(
              'footer2'.tr,
              style: TextStyleValue().interSemiBold24px,
            ),
          ),
          footerText(context, 'Đơn vị tổ chức'),
          footerText(context, 'Thông tin quy chế giải thưởng'),
          footerText(context, 'Hội đồng giám khảo'),
          footerText(context, 'Đơn vị đạt giải'),
        ],
      ),
    );
  }

  Widget buildFooterContent3(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(bottom: 21.w),
            margin: EdgeInsets.only(bottom: 21.w),
            decoration: BoxDecoration(
                border: Border(
                    bottom: BorderSide(color: ColorConstant.blueGray400))),
            child: Text(
              'footer3'.tr,
              style: TextStyleValue().interSemiBold24px,
            ),
          ),
          footerText(context, 'Địa chỉ: ...'),
          footerText(context, 'Số điện thoại: 0905...'),
          footerText(context, 'Fax: ...'),
          footerText(context, 'Email: ...'),
        ],
      ),
    );
  }

  Widget footerText(BuildContext context, String title) {
    return Padding(
      padding: EdgeInsets.only(bottom: 16.w),
      child: Text(
        title,
        style: TextStyleValue().interSemiBold14px,
      ),
    );
  }

  Widget buildAccessTimes(BuildContext context) {
    return Container(
      width: double.infinity,
      color: ColorConstant.defaultColor,
      padding: EdgeInsets.symmetric(vertical: 10.w),
      child: Text(
        'access_time'.tr,
        style: TextStyleValue().interSemiBold14px
            .copyWith(color: ColorConstant.whiteA700),
        textAlign: TextAlign.center,
      ),
    );
  }
}
