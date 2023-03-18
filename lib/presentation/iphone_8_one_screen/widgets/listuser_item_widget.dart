import '../controller/iphone_8_one_controller.dart';
import '../models/listuser_item_model.dart';
import 'package:flutter/material.dart';
import 'package:eeva/core/app_export.dart';
import 'package:eeva/widgets/custom_button.dart';

// ignore: must_be_immutable
class ListuserItemWidget extends StatelessWidget {
  ListuserItemWidget(this.listuserItemModelObj);

  ListuserItemModel listuserItemModelObj;

  var controller = Get.find<Iphone8OneController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      child: Container(
        padding: getPadding(
          left: 30,
          top: 24,
          right: 30,
          bottom: 24,
        ),
        decoration: AppDecoration.outlineBluegray2001.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder12,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomImageView(
              svgPath: ImageConstant.imgUser,
              height: getSize(
                57,
              ),
              width: getSize(
                57,
              ),
              margin: getMargin(
                left: 4,
                top: 3,
              ),
            ),
            Padding(
              padding: getPadding(
                top: 21,
                right: 27,
              ),
              child: Obx(
                () => Text(
                  listuserItemModelObj.itngthamgiaTxt.value,
                  maxLines: null,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtInterBold32Gray900,
                ),
              ),
            ),
            Padding(
              padding: getPadding(
                left: 1,
                top: 20,
                right: 8,
              ),
              child: Obx(
                () => Text(
                  listuserItemModelObj.ttcccnvTxt.value,
                  maxLines: null,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtInterMedium16,
                ),
              ),
            ),
            CustomButton(
              height: getVerticalSize(
                48,
              ),
              width: getHorizontalSize(
                150,
              ),
              text: "lbl_xem_ti_p".tr,
              margin: getMargin(
                left: 1,
                top: 18,
              ),
              suffixWidget: Container(
                margin: getMargin(
                  left: 10,
                ),
                child: CustomImageView(
                  svgPath: ImageConstant.imgArrowrightGray800,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
