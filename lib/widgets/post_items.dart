import 'package:cached_network_image/cached_network_image.dart';
import 'package:eeva/core/app_export.dart';
import 'package:eeva/data/models/posts_model.dart';
import 'package:eeva/widgets/_cached_image.dart';
import 'package:flutter/cupertino.dart';

import '../core/utils/date_util.dart';

class PostItems extends StatelessWidget {
  final PostModel model;

  PostItems(this.model);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 48.w),
      padding: EdgeInsets.all(16.w),
      decoration: BoxDecoration(
        color: ColorConstant.whiteA700,
        borderRadius: BorderRadius.circular(12.w),
        border: Border.all(color: ColorConstant.neutral6, width: 1.w),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CachedImage(
            model.avatar?.url ?? '',
            defaultUrl: ImageConstant.imgBanner,
            fit: BoxFit.contain,
            radius: 12,
            boxDecoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          SizedBox(height: 16.w),
          Text(
            DateUtil.formatDate(model.createdAt, format: DataFormats.ddMMyyyy),
            maxLines: 1,
            style: TextStyleValue()
                .interSemiBold14px
                .copyWith(color: ColorConstant.neutral4),
          ),
          SizedBox(height: 16.w),
          Text(
            model.title,
            maxLines: 2,
            style: TextStyleValue().interBold16px,
          ),
        ],
      ),
    );
  }
}
