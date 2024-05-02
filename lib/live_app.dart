import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:live_assesment/core/routing/routes.dart';
import 'package:live_assesment/core/routing/routes_manager.dart';
import 'package:live_assesment/core/theming/theme_dark.dart';
import 'package:live_assesment/core/theming/theme_light.dart';
import 'package:live_assesment/features/home/controller/home_controller.dart';

class LiveApp extends StatelessWidget {
  final RoutesManager routesManager = Get.put(RoutesManager());
  final HomeController homeController = Get.put(HomeController());
  LiveApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: Routes.home,
        onGenerateRoute: routesManager.generateRoute,
        theme: homeController.isDark.value
            ? ThemeDark().getAppDarkTheme()
            : ThemeLight().getAppLightTheme(),
      ),
    );
  }
}
