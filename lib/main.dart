import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'core/app_export.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]).then((value) {
    Logger.init(kReleaseMode ? LogMode.live : LogMode.debug);
    runApp(MyApp());
  });
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      useInheritedMediaQuery: true,
      builder: (_, child) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            visualDensity: VisualDensity.standard,
          ),
          translations: AppLocalization(),
          locale: Get.deviceLocale,
          //for setting localization strings
          fallbackLocale: Locale('en', 'US'),
          title: 'soueece',
          initialBinding: InitialBindings(),
          initialRoute: AppRoutes.home,
          getPages: AppRoutes.pages,
        );
      },
      // child: GetMaterialApp(
      //   debugShowCheckedModeBanner: false,
      //   theme: ThemeData(
      //     visualDensity: VisualDensity.standard,
      //   ),
      //   translations: AppLocalization(),
      //   locale: Get.deviceLocale, //for setting localization strings
      //   fallbackLocale: Locale('en', 'US'),
      //   title: 'soueece',
      //   initialBinding: InitialBindings(),
      //   initialRoute: AppRoutes.home,
      //   getPages: AppRoutes.pages,
      // ),
    );
  }
}
