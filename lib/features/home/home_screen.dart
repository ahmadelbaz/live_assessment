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
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(StringManager.homeScreenTitle,
                  style: Theme.of(context).textTheme.bodyLarge),
              ElevatedButton(
                  onPressed: () {},
                  child: const Text(StringManager.firstPaginationType)),
            ],
          ),
        ),
      ),
    );
  }
}
