import 'package:flutter/material.dart';
import 'package:live_assesment/core/theming/color_manager.dart';
import 'package:live_assesment/core/theming/font_manager.dart';
import 'package:live_assesment/core/theming/text_style_manager.dart';
import 'package:live_assesment/core/theming/value_manager.dart';

class ThemeDark {
  ThemeData getAppDarkTheme() {
    return ThemeData(
      // Main color
      primaryColor: ColorManager.primary,
      primaryColorLight: ColorManager.black,
      primaryColorDark: ColorManager.darkPrimary,
      disabledColor: ColorManager.grey,
      splashColor: ColorManager.lightPrimary,
      fontFamily: FontConstants.fontFamily,
      colorScheme: const ColorScheme(
        brightness: Brightness.dark,
        primary: ColorManager.primary,
        onPrimary: ColorManager.accent,
        secondary: ColorManager.darkPrimary,
        onSecondary: ColorManager.error,
        error: ColorManager.error,
        onError: ColorManager.error,
        background: ColorManager.darkBackground,
        onBackground: ColorManager.darkPrimary,
        surface: ColorManager.darkBackground,
        onSurface: ColorManager.white,
      ),

      // App bar theme
      appBarTheme: AppBarTheme(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        elevation: 0,
        // shadowColor: ColorManager.lightPrimary,
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
        iconTheme: const IconThemeData(color: ColorManager.white),
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
          minimumSize: const Size(AppSizes.s200, AppSizes.s50),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppSizes.s12),
          ),
        ),
      ),

      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          backgroundColor: ColorManager.accent,
          foregroundColor: ColorManager.darkBackground,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppSizes.s12),
          ),
        ),
      ),

      // Text Theme
      textTheme: TextTheme(
        bodyLarge: getSemiBoldTextStyle(
          fontSize: FontSize.s18,
          color: ColorManager.lightPrimary,
        ),
        // Add more text styles as needed
      ),
    );
  }
}
