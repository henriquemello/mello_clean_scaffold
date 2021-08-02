import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'modules/core/di/app_binding.dart';
import 'modules/core/i18n/translations.dart';
import 'modules/core/modules/pages.dart';
import 'modules/core/modules/routes.dart';
import 'modules/core/presentation/theme/theme_data.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeConfig.lightThemeData,
      darkTheme: ThemeConfig.darkThemeData,
      themeMode: ThemeMode.light,
      getPages: Pages.routes,
      initialRoute: Routes.initialRoute,
      initialBinding: AppBinding(),
      translations: Messages(),
      locale: Locale('pt', 'BR'),
      fallbackLocale: Locale('pt', 'BR'),
    );
  }
}
