import 'package:eeva/core/app_export.dart';
import 'package:eeva/data/apiClient/api_client.dart';
import 'package:eeva/data/models/posts_model.dart';

import '../../../untils/error_util.dart';

class HomeController extends GetxController {
  final ApiClient client;

  HomeController({required this.client});

  final listPost = <PostModel>[].obs;
  final listIntroduce = <PostModel>[].obs;

  @override
  void onInit() {
    getVideoContent();
    getListIntroduce();
    super.onInit();
  }

  getVideoContent() async {
    await client.getNews(category: NEWS, limit: 8).then((response) async {
      if (response.data['data'] != null) {
        listPost.assignAll((response.data['data'] as List)
            .map((e) => PostModel.fromJson(e as Map<String, dynamic>))
            .toList());
      }
    }).catchError((error, trace) {
      ErrorUtil.catchError(error, trace);
    });
  }

  getListIntroduce() async {
    await client.getNews(category: INTRODUCE, limit: 8).then((response) async {
      if (response.data['data'] != null) {
        listIntroduce.assignAll((response.data['data'] as List)
            .map((e) => PostModel.fromJson(e as Map<String, dynamic>))
            .toList());
      }
    }).catchError((error, trace) {
      ErrorUtil.catchError(error, trace);
    });
  }
}
