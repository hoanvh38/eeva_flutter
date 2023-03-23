import 'package:eeva/core/app_export.dart';
import 'package:eeva/widgets/custom_icon_button.dart';
import 'package:eeva/widgets/post_items.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../widgets/footer.dart';
import '../../../widgets/header.dart';
import '../../../widgets/introduce.dart';
import '../../../widgets/juge.dart';
import '../../../widgets/menu.dart';
import '../../../widgets/mission.dart';
import '../../../widgets/prize.dart';
import 'custom_content_text.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({super.key});

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
                const Header(),
                Menu(),
                buildBanner(context),
                SizedBox(
                  height: 72.w,
                ),
                const Introduce(),
                SizedBox(
                  height: 48.w,
                ),
                const Mission(),
                SizedBox(
                  height: 72.w,
                ),
                CustomContentText(
                  title: 'Quy Trình Giải Thưởng - 2023',
                  colorRectangle: ColorConstant.primary3.withOpacity(0.2),
                ),
                const Prize(),
                SizedBox(
                  height: 48.w,
                ),
                const Judges(),
                SizedBox(
                  height: 48.w,
                ),
                CustomContentText(
                  title: 'Tin tức và hoạt động',
                ),
                buildListNew(context),
                const Footer()
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildMenu(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 100.w,
      color: Colors.red,
    );
  }

  Widget buildBanner(BuildContext context) {
    return Image.asset(
      ImageConstant.imgBanner,
      fit: BoxFit.cover,
    );
  }

  Widget buildListNew(BuildContext context) {
    return Column(
      children: [
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Obx(
            () => IntrinsicHeight(
              child: Container(
                padding: EdgeInsets.only(top: 40.w, bottom: 32.w),
                child: Row(
                  children: controller.listPost
                      .map((element) => PostItems(element))
                      .toList(),
                ),
              ),
            ),
          ),
        ),
        CustomIconButton(
          title: 'Xem tất cả',
          icon: SvgPicture.asset(
            ImageConstant.imgArrowright,
            fit: BoxFit.contain,
            width: 24.w,
          ),
        ),
        SizedBox(
          height: 100.w,
        ),
      ],
    );
  }
}
