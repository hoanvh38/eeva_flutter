import 'package:dio/dio.dart';

import 'base_client.dart';

class ApiClient extends BaseClient {
  final client = BaseClient.instance.dio;

  Future<Response> getNews({int offset = 0, int limit = 20}) async {
    return client.get('$apiHostReal/public/post');
  }

  Future<Response> getCategory({int offset = 0, int limit = 20}) async {
    return client.get('$apiHostReal/categories');
  }

  Future<Response> getVideoByCollectionId(String collectionId,
      {int page = 1, int pageSize = 20}) async {
    return client.post('$apiHostReal/viral-content/valid-approved', data: {
      "filterByCollectionIds": [collectionId],
      "page": page,
      "pageSize": pageSize
    });
  }

  Future<Response> getListViralContent(
      {int page = 1, int pageSize = 20}) async {
    return client.get('$apiHostReal/viral-content');
  }

  Future<Response> getUserInfo() async {
    return client.get('$apiHostReal/auth/profile');
  }
}
