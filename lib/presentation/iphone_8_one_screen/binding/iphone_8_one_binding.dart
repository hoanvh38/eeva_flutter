import '../controller/iphone_8_one_controller.dart';
import 'package:get/get.dart';

class Iphone8OneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => Iphone8OneController());
  }
}
