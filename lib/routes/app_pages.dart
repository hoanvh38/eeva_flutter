import 'package:eeva/presentation/iphone_8_one_screen/iphone_8_one_screen.dart';
import 'package:eeva/presentation/iphone_8_one_screen/binding/iphone_8_one_binding.dart';
import 'package:get/get.dart';

class AppRoutes {
  static const String iphone8OneScreen = '/iphone_8_one_screen';

  static String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: iphone8OneScreen,
      page: () => Iphone8OneScreen(),
      bindings: [
        Iphone8OneBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => Iphone8OneScreen(),
      bindings: [
        Iphone8OneBinding(),
      ],
    )
  ];
}
