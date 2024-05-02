import 'package:flutter/material.dart';
import 'package:live_assesment/core/helpers/extensions.dart';
import 'package:live_assesment/core/routing/routes.dart';
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
          onPressed: () {
            context.pushNamed(Routes.firstPagination);
          },
          child: const Text(StringManager.firstPaginationType),
        ),
        const SizedBox(height: AppSizes.s12),
        ElevatedButton(
          onPressed: () {
            context.pushNamed(Routes.secondPagination);
          },
          child: const Text(StringManager.secondPaginationType),
        ),
        const SizedBox(height: AppSizes.s12),
        ElevatedButton(
          onPressed: () {
            context.pushNamed(Routes.thirdPagination);
          },
          child: const Text(StringManager.thirdPaginationType),
        ),
      ],
    );
  }
}
