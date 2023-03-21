import 'package:eeva/core/app_export.dart';
import 'package:eeva/data/apiClient/api_client.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeController(client:  ApiClient()));
  }

}