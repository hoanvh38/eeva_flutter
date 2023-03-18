import '../iphone_8_one_screen/widgets/listarrowleft_item_widget.dart';
import '../iphone_8_one_screen/widgets/listuser_item_widget.dart';
import 'controller/iphone_8_one_controller.dart';
import 'models/listarrowleft_item_model.dart';
import 'models/listuser_item_model.dart';
import 'package:flutter/material.dart';
import 'package:eeva/core/app_export.dart';
import 'package:eeva/widgets/custom_button.dart';

class Iphone8OneScreen extends GetWidget<Iphone8OneController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        body: SizedBox(
          width: size.width,
          child: SingleChildScrollView(
            child: Padding(
              padding: getPadding(
                bottom: 5,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: double.maxFinite,
                    child: Container(
                      width: double.maxFinite,
                      padding: getPadding(
                        all: 16,
                      ),
                      decoration: AppDecoration.gradientLightgreen200Teal200,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          CustomButton(
                            height: getVerticalSize(
                              32,
                            ),
                            width: getHorizontalSize(
                              113,
                            ),
                            text: "lbl_gi_i_th_ng".tr,
                            variant: ButtonVariant.FillBlue900,
                            padding: ButtonPadding.PaddingAll6,
                            fontStyle: ButtonFontStyle.InterBold16,
                          ),
                          Padding(
                            padding: getPadding(
                              top: 11,
                              right: 7,
                            ),
                            child: Text(
                              "msg_s_d_ng_n_ng_l_ng".tr,
                              maxLines: null,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterBold20,
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              top: 41,
                              right: 40,
                              bottom: 8,
                            ),
                            child: Row(
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.imgSct1,
                                  height: getSize(
                                    60,
                                  ),
                                  width: getSize(
                                    60,
                                  ),
                                ),
                                CustomImageView(
                                  imagePath: ImageConstant.imgLogousaid1,
                                  height: getVerticalSize(
                                    60,
                                  ),
                                  width: getHorizontalSize(
                                    203,
                                  ),
                                  margin: getMargin(
                                    left: 40,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: double.maxFinite,
                    padding: getPadding(
                      left: 16,
                      top: 20,
                      right: 16,
                      bottom: 20,
                    ),
                    decoration: AppDecoration.fillGray900bf,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: getPadding(
                            top: 7,
                          ),
                          child: Text(
                            "lbl_logo".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtInterBold32,
                          ),
                        ),
                        CustomImageView(
                          svgPath: ImageConstant.imgMenu,
                          height: getSize(
                            24,
                          ),
                          width: getSize(
                            24,
                          ),
                          margin: getMargin(
                            top: 11,
                            bottom: 11,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: getVerticalSize(
                      250,
                    ),
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                      color: ColorConstant.blueGray100,
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 32,
                    ),
                    child: Divider(
                      height: getVerticalSize(
                        1,
                      ),
                      thickness: getVerticalSize(
                        1,
                      ),
                      color: ColorConstant.blueGray200,
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      width: getHorizontalSize(
                        255,
                      ),
                      margin: getMargin(
                        left: 16,
                        top: 46,
                      ),
                      child: Text(
                        "msg_gi_i_thi_u_eea_h".tr,
                        maxLines: null,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtInterBold32Gray900,
                      ),
                    ),
                  ),
                  CustomButton(
                    height: getVerticalSize(
                      48,
                    ),
                    width: getHorizontalSize(
                      152,
                    ),
                    text: "lbl_xem_ti_p".tr,
                    margin: getMargin(
                      left: 16,
                      top: 31,
                    ),
                    variant: ButtonVariant.FillBlue900,
                    fontStyle: ButtonFontStyle.InterBold16WhiteA700,
                    suffixWidget: Container(
                      margin: getMargin(
                        left: 10,
                      ),
                      child: CustomImageView(
                        svgPath: ImageConstant.imgArrowright,
                      ),
                    ),
                    alignment: Alignment.centerLeft,
                  ),
                  Padding(
                    padding: getPadding(
                      left: 15,
                      top: 52,
                      right: 16,
                    ),
                    child: Text(
                      "msg_nh_m_th_c_y_vi_c".tr,
                      maxLines: null,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtInterMedium16,
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 16,
                      top: 34,
                      right: 23,
                    ),
                    child: Text(
                      "msg_m_c_ti_u_c_a_ho_t".tr,
                      maxLines: null,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtInterMedium16,
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 46,
                    ),
                    child: Divider(
                      height: getVerticalSize(
                        1,
                      ),
                      thickness: getVerticalSize(
                        1,
                      ),
                      color: ColorConstant.blueGray200,
                    ),
                  ),
                  Container(
                    margin: getMargin(
                      left: 16,
                      top: 31,
                      right: 16,
                    ),
                    padding: getPadding(
                      left: 15,
                      top: 13,
                      right: 15,
                      bottom: 13,
                    ),
                    decoration: AppDecoration.fillGray100.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder12,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: getPadding(
                            right: 39,
                          ),
                          child: Text(
                            "msg_b_i_c_nh_nhi_m".tr,
                            maxLines: null,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtInterBold32Gray900,
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            top: 25,
                          ),
                          child: Text(
                            "msg_n_ng_c_l_a".tr,
                            maxLines: null,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtInterMedium16,
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            top: 47,
                            right: 33,
                          ),
                          child: Text(
                            "msg_d_n_c_m_t_s".tr,
                            maxLines: null,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtInterBold16,
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            top: 22,
                            bottom: 2,
                          ),
                          child: Obx(
                            () => ListView.separated(
                              physics: NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              separatorBuilder: (context, index) {
                                return SizedBox(
                                  height: getVerticalSize(
                                    16,
                                  ),
                                );
                              },
                              itemCount: controller.iphone8OneModelObj.value
                                  .listarrowleftItemList.length,
                              itemBuilder: (context, index) {
                                ListarrowleftItemModel model = controller
                                    .iphone8OneModelObj
                                    .value
                                    .listarrowleftItemList[index];
                                return ListarrowleftItemWidget(
                                  model,
                                );
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: getPadding(
                        left: 16,
                        top: 42,
                      ),
                      child: Text(
                        "msg_n_i_dung_gi_i_th_ng".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtInterBold32Gray9001,
                      ),
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 16,
                      top: 22,
                      right: 15,
                    ),
                    child: Obx(
                      () => ListView.separated(
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        separatorBuilder: (context, index) {
                          return SizedBox(
                            height: getVerticalSize(
                              16,
                            ),
                          );
                        },
                        itemCount: controller
                            .iphone8OneModelObj.value.listuserItemList.length,
                        itemBuilder: (context, index) {
                          ListuserItemModel model = controller
                              .iphone8OneModelObj.value.listuserItemList[index];
                          return ListuserItemWidget(
                            model,
                          );
                        },
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      width: getHorizontalSize(
                        234,
                      ),
                      margin: getMargin(
                        left: 16,
                        top: 37,
                      ),
                      child: Text(
                        "msg_quy_tr_nh_gi_i_th_ng".tr,
                        maxLines: null,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtInterBold32Gray900,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                      height: getVerticalSize(
                        292,
                      ),
                      width: getHorizontalSize(
                        355,
                      ),
                      margin: getMargin(
                        top: 25,
                      ),
                      child: Stack(
                        alignment: Alignment.topCenter,
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Container(
                              padding: getPadding(
                                left: 16,
                                top: 14,
                                right: 16,
                                bottom: 14,
                              ),
                              decoration:
                                  AppDecoration.outlineBluegray2001.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder12,
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Padding(
                                    padding: getPadding(
                                      top: 118,
                                      right: 5,
                                    ),
                                    child: Text(
                                      "msg_c_quan_ch_tr".tr,
                                      maxLines: null,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtInterMedium16,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.topCenter,
                            child: Padding(
                              padding: getPadding(
                                left: 16,
                                top: 15,
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    "lbl_b_c_1".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtInterBold20Bluegray400,
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      top: 10,
                                    ),
                                    child: Text(
                                      "msg_c_ng_b_gi_i_th_ng".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtInterBold20Blue900,
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      top: 14,
                                    ),
                                    child: Text(
                                      "lbl_th_ng_4".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtInterBold20Bluegray400,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: double.maxFinite,
                    child: Container(
                      width: double.maxFinite,
                      margin: getMargin(
                        top: 40,
                      ),
                      padding: getPadding(
                        left: 15,
                        top: 24,
                        right: 15,
                        bottom: 24,
                      ),
                      decoration: AppDecoration.fillYellow8006c,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          CustomImageView(
                            svgPath: ImageConstant.imgCar,
                            height: getSize(
                              64,
                            ),
                            width: getSize(
                              64,
                            ),
                            margin: getMargin(
                              left: 4,
                              top: 3,
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              top: 25,
                              right: 32,
                            ),
                            child: Text(
                              "msg_ban_gi_m_kh_o".tr,
                              maxLines: null,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterBold32Gray900,
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              top: 17,
                              right: 5,
                            ),
                            child: Text(
                              "msg_n_ng_c_l_a".tr,
                              maxLines: null,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterMedium16Gray800,
                            ),
                          ),
                          CustomButton(
                            height: getVerticalSize(
                              48,
                            ),
                            width: getHorizontalSize(
                              165,
                            ),
                            text: "lbl_xem_t_t_c".tr,
                            margin: getMargin(
                              top: 22,
                            ),
                            variant: ButtonVariant.FillBlue900,
                            fontStyle: ButtonFontStyle.InterBold16WhiteA700,
                            suffixWidget: Container(
                              margin: getMargin(
                                left: 10,
                              ),
                              child: CustomImageView(
                                svgPath: ImageConstant.imgArrowright,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: double.maxFinite,
                    child: Container(
                      width: double.maxFinite,
                      padding: getPadding(
                        left: 14,
                        top: 24,
                        right: 14,
                        bottom: 24,
                      ),
                      decoration: AppDecoration.fillBlue9006c,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          CustomImageView(
                            svgPath: ImageConstant.imgTrophyBlue900,
                            height: getSize(
                              64,
                            ),
                            width: getSize(
                              64,
                            ),
                            margin: getMargin(
                              left: 5,
                              top: 3,
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              top: 30,
                            ),
                            child: Text(
                              "lbl_n_v_t_gi_i".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterBold32Gray9001,
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              top: 22,
                              right: 6,
                            ),
                            child: Text(
                              "msg_n_ng_c_l_a".tr,
                              maxLines: null,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterMedium16Gray800,
                            ),
                          ),
                          CustomButton(
                            height: getVerticalSize(
                              48,
                            ),
                            width: getHorizontalSize(
                              165,
                            ),
                            text: "lbl_xem_t_t_c".tr,
                            margin: getMargin(
                              left: 1,
                              top: 22,
                            ),
                            variant: ButtonVariant.FillBlue900,
                            fontStyle: ButtonFontStyle.InterBold16WhiteA700,
                            suffixWidget: Container(
                              margin: getMargin(
                                left: 10,
                              ),
                              child: CustomImageView(
                                svgPath: ImageConstant.imgArrowright,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      width: getHorizontalSize(
                        259,
                      ),
                      margin: getMargin(
                        left: 20,
                        top: 38,
                      ),
                      child: Text(
                        "msg_tin_t_c_truy_n".tr,
                        maxLines: null,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtInterBold32Gray900,
                      ),
                    ),
                  ),
                  Container(
                    margin: getMargin(
                      left: 16,
                      top: 25,
                      right: 16,
                    ),
                    padding: getPadding(
                      left: 16,
                      top: 14,
                      right: 16,
                      bottom: 14,
                    ),
                    decoration: AppDecoration.outlineGray200.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder12,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: getVerticalSize(
                            319,
                          ),
                          width: getHorizontalSize(
                            311,
                          ),
                          margin: getMargin(
                            top: 1,
                          ),
                          decoration: BoxDecoration(
                            color: ColorConstant.blueGray100,
                            borderRadius: BorderRadius.circular(
                              getHorizontalSize(
                                12,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            top: 19,
                          ),
                          child: Text(
                            "lbl_01_04_2022".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtInterSemiBold14,
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            top: 19,
                            right: 26,
                          ),
                          child: Text(
                            "msg_ph_t_ng_gi_i_th_ng".tr,
                            maxLines: null,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtInterBold16Gray900,
                          ),
                        ),
                      ],
                    ),
                  ),
                  CustomButton(
                    height: getVerticalSize(
                      48,
                    ),
                    width: getHorizontalSize(
                      165,
                    ),
                    text: "lbl_xem_t_t_c".tr,
                    margin: getMargin(
                      top: 32,
                    ),
                    variant: ButtonVariant.FillBlue900,
                    fontStyle: ButtonFontStyle.InterBold16WhiteA700,
                    suffixWidget: Container(
                      margin: getMargin(
                        left: 10,
                      ),
                      child: CustomImageView(
                        svgPath: ImageConstant.imgArrowright,
                      ),
                    ),
                  ),
                  Container(
                    width: double.maxFinite,
                    child: Container(
                      margin: getMargin(
                        top: 143,
                      ),
                      padding: getPadding(
                        left: 15,
                        top: 23,
                        right: 15,
                        bottom: 23,
                      ),
                      decoration: AppDecoration.fillGreen50,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "lbl_header".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtInterBold24,
                          ),
                          Padding(
                            padding: getPadding(
                              top: 24,
                              right: 9,
                            ),
                            child: Text(
                              "msg_website_n_y_thu_c".tr,
                              maxLines: null,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterMedium16Gray800,
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              top: 33,
                            ),
                            child: Text(
                              "msg_d_nh_cho_n_v".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterSemiBold24,
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              top: 19,
                            ),
                            child: Divider(
                              height: getVerticalSize(
                                1,
                              ),
                              thickness: getVerticalSize(
                                1,
                              ),
                              color: ColorConstant.blueGray400,
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              top: 34,
                            ),
                            child: Text(
                              "lbl_n_v_t_ch_c".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterSemiBold14Gray800,
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              top: 23,
                            ),
                            child: Text(
                              "msg_th_ng_tin_quy_ch".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterSemiBold14Gray800,
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              top: 23,
                            ),
                            child: Text(
                              "msg_h_i_ng_gi_m_kh_o".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterSemiBold14Gray800,
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              top: 23,
                            ),
                            child: Text(
                              "lbl_n_v_t_gi_i".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterSemiBold14Gray800,
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              top: 45,
                            ),
                            child: Text(
                              "lbl_li_n_k_t_kh_c".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterSemiBold24,
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              top: 22,
                            ),
                            child: Divider(
                              height: getVerticalSize(
                                1,
                              ),
                              thickness: getVerticalSize(
                                1,
                              ),
                              color: ColorConstant.blueGray400,
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              top: 34,
                            ),
                            child: Text(
                              "lbl_n_v_t_ch_c".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterSemiBold14Gray800,
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              top: 23,
                            ),
                            child: Text(
                              "msg_th_ng_tin_quy_ch".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterSemiBold14Gray800,
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              top: 23,
                            ),
                            child: Text(
                              "msg_h_i_ng_gi_m_kh_o".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterSemiBold14Gray800,
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              top: 23,
                              bottom: 24,
                            ),
                            child: Text(
                              "lbl_n_v_t_gi_i".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterSemiBold14Gray800,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: Container(
          width: double.maxFinite,
          margin: getMargin(
            bottom: 22,
          ),
          padding: getPadding(
            left: 16,
            top: 10,
            right: 16,
            bottom: 10,
          ),
          decoration: AppDecoration.fillGray90001,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: getPadding(
                  top: 1,
                  right: 18,
                ),
                child: Text(
                  "msg_b_n_quy_n_thu_c".tr,
                  maxLines: null,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtInterSemiBold14WhiteA700,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
