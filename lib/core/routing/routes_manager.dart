import 'package:flutter/material.dart';
import 'package:live_assesment/core/routing/routes.dart';
import 'package:live_assesment/core/theming/string_manager.dart';
import 'package:live_assesment/features/home/home_screen.dart';
import 'package:live_assesment/features/pagination/first_pagination_screen.dart';

class RoutesManager {
  Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.home:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      case Routes.firstPagination:
        return MaterialPageRoute(builder: (_) => FirstPagenationScreen());
      default:
        return MaterialPageRoute(
          builder: (_) => const Scaffold(
            body: Center(
              child: Text(StringManager.noRoutesFound),
            ),
          ),
        );
    }
  }
}
