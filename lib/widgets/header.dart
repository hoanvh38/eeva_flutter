import 'package:eeva/core/app_export.dart';
import 'package:flutter/cupertino.dart';

import '../theme/app_decoration.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                  padding: getPadding(top: 4.w, bottom: 4.w, left: 4.w, right: 2.w),
                  decoration: BoxDecoration(
                      color: ColorConstant.primary2,
                      borderRadius: BorderRadius.circular(6.w)),
                  child: Text(
                    'Giải thưởng',
                    style: TextStyleValue().interSemiBold24px.copyWith(color: ColorConstant.whiteA700),
                  )),
              SizedBox(
                height: 16.w,
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
}
