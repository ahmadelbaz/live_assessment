import 'package:flutter/material.dart';
import 'package:live_assesment/core/theming/color_manager.dart';

class ThemeLight {
  ThemeData themeLight() {
    return ThemeData(
      primaryColor: ColorManager.primary,

      // colorScheme: ,
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: ColorManager.darkPrimary,
          foregroundColor: ColorManager.white,
          textStyle: const TextStyle(),
        ),
      ),
    );
  }
}
