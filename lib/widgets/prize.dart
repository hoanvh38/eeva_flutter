import 'package:eeva/core/app_export.dart';
import 'package:flutter/cupertino.dart';

class Prize extends StatelessWidget {
  const Prize({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
}
