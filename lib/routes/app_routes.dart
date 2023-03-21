import 'package:get/get.dart';

import '../presentation/home/binding/home_binding.dart';
import '../presentation/home/view/home.dart';

class AppRoutes {
  static const String iphone8OneScreen = '/iphone_8_one_screen';

  static String initialRoute = '/initialRoute';
  static String home = '/homepage';

  static List<GetPage> pages = [
    GetPage(
      name: home,
      page: () => HomePage(),
      bindings: [
        HomeBinding(),
      ],
    )
  ];
}
