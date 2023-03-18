import '../controller/iphone_8_one_controller.dart';
import '../models/listarrowleft_item_model.dart';
import 'package:flutter/material.dart';
import 'package:eeva/core/app_export.dart';

// ignore: must_be_immutable
class ListarrowleftItemWidget extends StatelessWidget {
  ListarrowleftItemWidget(this.listarrowleftItemModelObj);

  ListarrowleftItemModel listarrowleftItemModelObj;

  var controller = Get.find<Iphone8OneController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      child: Container(
        padding: getPadding(
          left: 24,
          top: 27,
          right: 24,
          bottom: 27,
        ),
        decoration: AppDecoration.outlineBluegray200.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder12,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CustomImageView(
              svgPath: ImageConstant.imgArrowleft,
              height: getVerticalSize(
                64,
              ),
              width: getHorizontalSize(
                48,
              ),
              margin: getMargin(
                left: 11,
              ),
            ),
            Padding(
              padding: getPadding(
                top: 17,
              ),
              child: Obx(
                () => Text(
                  listarrowleftItemModelObj.fourHundredTxt.value,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtInterBold96,
                ),
              ),
            ),
            Padding(
              padding: getPadding(
                top: 12,
                right: 20,
                bottom: 26,
              ),
              child: Obx(
                () => Text(
                  listarrowleftItemModelObj.megawattmwcTxt.value,
                  maxLines: null,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtInterBold20Gray900,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
