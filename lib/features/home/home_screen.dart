import 'package:flutter/material.dart';
import 'package:live_assesment/core/theming/string_manager.dart';
import 'package:live_assesment/core/theming/value_manager.dart';
import 'package:live_assesment/features/home/ui/widgets/home_body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(StringManager.homeScreen),
      ),
      body: const Center(
        child: Padding(
          padding: EdgeInsets.all(AppSizes.s8),
          child: HomeBody(),
        ),
      ),
    );
  }
}
