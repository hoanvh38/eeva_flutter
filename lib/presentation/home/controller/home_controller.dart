import 'dart:html';

import 'package:eeva/core/app_export.dart';
import 'package:eeva/data/apiClient/api_client.dart';
import 'package:eeva/data/models/posts_model.dart';

import '../../../untils/error_util.dart';

class HomeController extends GetxController {
  final ApiClient client;

  HomeController({required this.client});

  final listPost = <PostModel>[].obs;

  @override
  void onInit() {
    super.onInit();
    getVideoContent();
  }

  getVideoContent() async {
    await client.getNews().then((response) async {
      if (response.data['data'] != null) {
        listPost.assignAll((response.data['data'] as List)
            .map((e) => PostModel.fromJson(e as Map<String, dynamic>))
            .toList());
      }
    }).catchError((error, trace) {
      ErrorUtil.catchError(error, trace);
    });
  }
}
