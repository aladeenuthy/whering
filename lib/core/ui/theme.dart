// ignore_for_file: deprecated_member_use

import "package:flutter/material.dart";

import "../resources/app_colors.dart";

ThemeData appTheme() {
  return ThemeData(
    scaffoldBackgroundColor: AppColors.appBgColor,
    primaryColor: AppColors.primary,
    primaryColorLight: AppColors.primary.withOpacity(0.3),
    primaryColorDark: AppColors.primary.withOpacity(0.3),

    // ripple color
    splashColor: AppColors.primary.withOpacity(0.3),
    appBarTheme: AppBarTheme(
      centerTitle: true,
      backgroundColor: Colors.transparent,
      elevation: 0,
    ),
    colorScheme: ColorScheme(
      background: AppColors.appBgColor,
      brightness: Brightness.light,
      primary: AppColors.primary,
      onPrimary: AppColors.primary,
      secondary: AppColors.secondary,
      onSecondary: AppColors.secondary,
      error: Colors.red,
      onError: Colors.white,
      surface: AppColors.appBgColor,
      onSurface: AppColors.appBgColor,
      onBackground: Colors.transparent,
    ),
  );
}
