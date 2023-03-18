import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

class BaseClient {
  static const _apiHostReal = 'https://eeva-backend.herokuapp.com/main-service';
  static const _apiLookup = 'https://www.iplocate.io/api/lookup';

  static BaseClient? _instance;
  Dio? _dio;

  BaseClient();

  static get instance {
    _instance ??= BaseClient._internal();
    return _instance;
  }

  get apiLookup => _apiLookup;

  get apiHostReal => _apiHostReal;

  get dio => _dio;

  BaseClient._internal() {
    _dio = Dio();
    _dio!.interceptors
        .add(InterceptorsWrapper(onRequest: (options, handler) async {
      String? token =
          'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6ImI4ZDExZTUyLTY5ODEtNDE5NC05NWU5LWE1MGI5MzZjNzhhMiIsInN0YXR1cyI6MTIsImFwcElkcyI6WyIwMTUiXSwiaWF0IjoxNjc4NjgxMTg4LCJleHAiOjE2NzkyODU5ODh9.5xZ9ttuOjOJ-aPHW0iFygA6baJEiTVnn4WJqB0fqFJc';
      if (kDebugMode) {
        print('Call api: ${options.method} ${options.path} ${options.data}');
      }
      if (token != '') {
        if (kDebugMode) {
          print('Request token: ${token.toString()}');
        }
        options.headers['content-type'] = 'application/json';
        options.headers['accept'] = 'application/json';
        options.headers["Authorization"] = 'Bearer $token';
      }
      return handler.next(options);
    }, onResponse: (response, handler) {
      return handler.next(response);
    }, onError: (DioError e, handler) {
      return handler.next(e);
    }));
  }
}
