import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:live_assesment/core/routing/routes.dart';
import 'package:live_assesment/core/routing/routes_manager.dart';

class LiveApp extends StatelessWidget {
  final RoutesManager routesManager = Get.put(RoutesManager());
  LiveApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.home,
      onGenerateRoute: routesManager.generateRoute,
      theme: ThemeData(
        primaryColor: Colors.purple,
      ),
    );
  }
}
