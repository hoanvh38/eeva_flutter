import 'package:eeva/core/app_export.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';

class Judges extends StatelessWidget {
  const Judges({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
}
