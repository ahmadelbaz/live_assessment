import 'package:flutter/material.dart';
import 'package:live_assesment/core/theming/string_manager.dart';

import '../../../../core/theming/value_manager.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          StringManager.homeScreenTitle,
          style: Theme.of(context).textTheme.bodyLarge,
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: AppSizes.s20),
        ElevatedButton(
          onPressed: () {},
          child: const Text(StringManager.firstPaginationType),
        ),
        const SizedBox(height: AppSizes.s12),
        ElevatedButton(
          onPressed: () {},
          child: const Text(StringManager.secondPaginationType),
        ),
      ],
    );
  }
}