import 'package:flutter/material.dart';
import 'package:live_assesment/core/theming/color_manager.dart';
import 'package:live_assesment/core/theming/font_manager.dart';
import 'package:live_assesment/core/theming/text_style_manager.dart';
import 'package:live_assesment/core/theming/value_manager.dart';

class ThemeLight {
  ThemeData getAppLightTheme() {
    return ThemeData(
      // Main color
      primaryColor: ColorManager.primary,
      primaryColorLight: ColorManager.white,
      primaryColorDark: ColorManager.darkPrimary,
      disabledColor: ColorManager.grey,
      splashColor: ColorManager.lightPrimary,
      fontFamily: FontConstants.fontFamily,
      colorScheme: const ColorScheme(
        brightness: Brightness.light,
        primary: ColorManager.primary,
        onPrimary: ColorManager.white,
        secondary: ColorManager.darkPrimary,
        onSecondary: ColorManager.white,
        error: ColorManager.white,
        onError: ColorManager.error,
        background: ColorManager.white,
        onBackground: ColorManager.darkPrimary,
        surface: ColorManager.white,
        onSurface: ColorManager.grey,
      ),

      // App bar theme
      appBarTheme: AppBarTheme(
        backgroundColor: ColorManager.primary,
        centerTitle: true,
        elevation: AppSizes.s4,
        shadowColor: ColorManager.lightPrimary,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(AppSizes.s25),
            bottomRight: Radius.circular(AppSizes.s25),
          ),
        ),
        titleTextStyle: getRegularTextStyle(
          fontSize: FontSize.s16,
          color: ColorManager.white,
        ),
      ),

      // Elevated Button Theme
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: ColorManager.primary,
          foregroundColor: ColorManager.white,
          textStyle: getRegularTextStyle(
            fontSize: FontSize.s16,
            color: ColorManager.white,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppSizes.s12),
          ),
        ),
      ),

      // Text Theme
      textTheme: TextTheme(
        bodyLarge: getSemiBoldTextStyle(
          fontSize: FontSize.s18,
          color: ColorManager.primary,
        ),
        // Add more text styles as needed
      ),
    );
  }
}
