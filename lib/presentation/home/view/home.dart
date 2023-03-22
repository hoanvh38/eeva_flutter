import 'package:eeva/core/app_export.dart';
import 'package:eeva/widgets/custom_button.dart';
import 'package:eeva/widgets/custom_icon_button.dart';
import 'package:eeva/widgets/post_items.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'custom_content_text.dart';

class HomePage extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.gray50,
        body: SizedBox(
          width: size.width,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                buildHeader(context),
                buildMenu(context),
                buildBanner(context),
                SizedBox(
                  height: 72.w,
                ),
                buildIntroduce(context),
                SizedBox(
                  height: 48.w,
                ),
                buildMission(context),
                SizedBox(
                  height: 72.w,
                ),
                CustomContentText(
                  title: 'Quy Trình Giải Thưởng - 2023',
                  colorRectangle: ColorConstant.primary3.withOpacity(0.2),
                ),
                buildPrize(context),
                SizedBox(
                  height: 48.w,
                ),
                CustomContentText(
                  title: 'Tin tức và hoạt động',
                ),
                buildListNew(context),
                buildJudges(context),
                buildFooter(context)
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildHeader(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 32.w, horizontal: 120.w),
      width: double.maxFinite,
      decoration: AppDecoration.gradientLightgreen200Teal200,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                  padding: getPadding(top: 4, bottom: 4, left: 2, right: 2),
                  decoration: BoxDecoration(
                      color: ColorConstant.primary2,
                      borderRadius: BorderRadius.circular(6)),
                  child: Text(
                    'Giải thưởng',
                    style: TextStyleValue().interSemiBold24px,
                  )),
              SizedBox(
                height: 16,
              ),
              Text(
                "msg_s_d_ng_n_ng_l_ng".tr,
                maxLines: null,
                textAlign: TextAlign.left,
                style: TextStyleValue()
                    .interBold20px
                    .copyWith(color: ColorConstant.primary2, fontSize: 32.w),
              ),
            ],
          ),
          Row(
            children: [
              Image.asset(
                ImageConstant.imgSct1,
                width: 120.w,
                height: 120.w,
              ),
              SizedBox(
                width: 72.w,
              ),
              Image.asset(
                ImageConstant.imgLogousaid1,
                height: 120.w,
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget buildMenu(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 100,
      color: Colors.red,
    );
  }

  Widget buildBanner(BuildContext context) {
    return Image.asset(
      ImageConstant.imgBanner,
      fit: BoxFit.cover,
    );
  }

  Widget buildIntroduce(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 120.w),
      padding: EdgeInsets.symmetric(vertical: 48.w),
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(width: 1.0, color: ColorConstant.diveded),
          bottom: BorderSide(width: 1.0, color: ColorConstant.diveded),
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

  Widget buildMission(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 120).r,
      padding: EdgeInsets.all(64).r,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
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

  Widget buildJudges(BuildContext context) {
    return IntrinsicHeight(
      child: Row(
        children: <Widget>[
          Expanded(
            child: Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 133, horizontal: 195)
                        .r,
                width: 0.5.sw,
                color: ColorConstant.yellow800.withOpacity(0.2),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SvgPicture.asset(
                      ImageConstant.imgTrophy,
                      width: 72.w,
                      height: 72.w,
                    ),
                    Text('Ban giám khảo & Hội đồng kỹ thuật',
                        style: TextStyleValue().interBold64px),
                    RSizedBox.square(dimension: 20),
                    Text(
                        'Gồm Trưởng ban là Phó Giám đốc Sở Công Thương, thành viên là Lãnh đạo phòng chuyên môn thuộc Sở Công Thương, Lãnh đạo các cơ quan, đơn vị có liên quan và các chuyên gia trong lĩnh vực sử dụng năng lượng tiết kiệm và hiệu quả.',
                        style: TextStyleValue().medium16),
                  ],
                )),
          ),
          // Without using Extensions
          Expanded(
            child: Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 133, horizontal: 195)
                        .r,
                width: 0.5.sw,
                color: ColorConstant.blue900.withOpacity(0.2),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SvgPicture.asset(
                      ImageConstant.imgTrophyBlue900,
                      width: 72.w,
                      height: 72.w,
                    ),
                    Text('Đơn vị đạt giải EEA 2023',
                        style: TextStyleValue().interBold64px),
                    RSizedBox.square(dimension: 20),
                    Text(
                        'Các doanh nghiệp đạt giải đều đáp ứng các tiêu chí Giải thưởng đề ra và có những thành tựu thực hiện SDNLTKHQ, năng lượng sạch phân tán nổi trội.',
                        style: TextStyleValue().medium16),
                  ],
                )),
          ),
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
            borderRadius: BorderRadius.circular(12)),
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

  Widget customText(BuildContext context) {
    return Row(
      children: [Text('data')],
    );
  }

  Widget buildPrize(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 120.w),
      child: Column(
        children: [
          SizedBox(
            height: 32.w,
          ),
          buildPrizeItem(context,
              content: 'price_content1'.tr,
              title: 'CÔNG BỐ GIẢI THƯỞNG',
              time: '(Tháng 4)'),
          buildPrizeItem(context,
              step: 2,
              content: 'price_content2'.tr,
              title: "NHẬN HỒ SƠ ",
              time: "(Tháng 4 - Tháng 5 - Hạn cuối 10.05.2023)"),
          buildPrizeItem(context,
              step: 3,
              content: 'price_content3'.tr,
              title: "ĐÁNH GIÁ, XÁC MINH, XẾP HẠNG HỒ SƠ",
              time: "(Tháng 5 - Tháng 6)"),
          buildPrizeItem(context,
              step: 4,
              content: 'price_content4'.tr,
              title: "TRAO GIẢI",
              time: "(Tháng 7)"),
        ],
      ),
    );
  }

  Widget buildPrizeItem(BuildContext context,
      {int step = 1,
      String content = '',
      String title = '',
      String time = ''}) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(top: 16.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: Color(0xffb0b4c3),
          width: 1,
        ),
      ),
      padding: EdgeInsets.all(16.w),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text('BƯỚC $step: ',
                  style: TextStyleValue()
                      .interBold20px
                      .copyWith(color: ColorConstant.blueGray400)),
              Text.rich(TextSpan(
                  text: title,
                  style: TextStyleValue()
                      .interBold20px
                      .copyWith(color: ColorConstant.primary2),
                  children: <InlineSpan>[
                    TextSpan(
                        text: '   ',
                        style: TextStyleValue()
                            .interBold20px
                            .copyWith(color: ColorConstant.blueGray400)),
                    TextSpan(
                        text: time,
                        style: TextStyleValue()
                            .interBold20px
                            .copyWith(color: ColorConstant.blueGray400)),
                  ])),
            ],
          ),
          SizedBox(height: 16.w),
          Text(content, style: TextStyleValue().medium16),
        ],
      ),
    );
  }

  Widget buildFooter(BuildContext context) {
    return Container(
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

  Widget buildListNew(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Obx(
        () => IntrinsicHeight(
          child: Row(
            children: controller.listPost
                .map((element) => PostItems(element))
                .toList(),
          ),
        ),
      ),
    );
  }
}
