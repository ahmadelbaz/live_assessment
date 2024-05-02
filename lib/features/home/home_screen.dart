import 'package:flutter/material.dart';
import 'package:live_assesment/core/theming/string_manager.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(StringManager.homeScreen),
      ),
      body: const Center(
        child: Text(StringManager.homeScreen),
      ),
    );
  }
}
