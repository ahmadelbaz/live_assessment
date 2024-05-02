import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:live_assesment/core/theming/string_manager.dart';
import 'package:live_assesment/core/theming/value_manager.dart';
import 'package:live_assesment/features/home/controller/home_controller.dart';
import 'package:live_assesment/features/home/ui/widgets/home_body.dart';

class HomeScreen extends StatelessWidget {
  final HomeController homeController = Get.find();
  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        appBar: AppBar(
          title: const Text(StringManager.homeScreen),
          actions: [
            Switch(
                value: homeController.isDark.value,
                onChanged: (value) {
                  homeController.changeTheme();
                }),
          ],
        ),
        body: const Center(
          child: Padding(
            padding: EdgeInsets.all(AppSizes.s8),
            child: HomeBody(),
          ),
        ),
      ),
    );
  }
}
