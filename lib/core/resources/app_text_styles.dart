import "package:flutter/material.dart";
import "package:flutter_screenutil/flutter_screenutil.dart";
import "../resources/app_fonts.dart";

TextStyle _getTextStyle(
  double fontSize,
  String fontFamily,
  FontWeight fontWeight,
  Color color, {
  TextDecoration? decoration,
  double? letterSpacing,
  double? height,
  TextLeadingDistribution? leadingDistribution,
}) {
  return TextStyle(
    letterSpacing: letterSpacing,
    height: height ?? 1.5,
    leadingDistribution: leadingDistribution,
    fontSize: fontSize.sp,
    fontFamily: fontFamily,
    fontWeight: fontWeight,
    decoration: decoration,
    color: color,
  );
}

// regular style
TextStyle getRegularStyle({
  double fontSize = FontSize.s12,
  required Color color,
  TextDecoration? decoration,
  double? letterSpacing,
  double? height,
  FontWeight? fontWeight,
  TextLeadingDistribution? leadingDistribution,
}) {
  return _getTextStyle(
    leadingDistribution: leadingDistribution,
    letterSpacing: letterSpacing,
    fontSize,
    FontConstants.openSans,
    fontWeight ?? FontWeightManager.regular,
    color,
    height: height,
    decoration: decoration,
  );
}

// light text style
TextStyle getLightStyle({
  double fontSize = FontSize.s12,
  required Color color,
  TextDecoration? decoration,
  double? letterSpacing,
  double? height,
  TextLeadingDistribution? leadingDistribution,
}) {
  return _getTextStyle(
    leadingDistribution: leadingDistribution,
    letterSpacing: letterSpacing,
    fontSize,
    FontConstants.openSans,
    FontWeightManager.light,
    color,
    height: height,
    decoration: decoration,
  );
}

// bold text style
TextStyle getBoldStyle({
  double fontSize = FontSize.s12,
  required Color color,
  TextDecoration? decoration,
  double? letterSpacing,
  double? height,
  TextLeadingDistribution? leadingDistribution,
}) {
  return _getTextStyle(
    leadingDistribution: leadingDistribution,
    letterSpacing: letterSpacing,
    fontSize,
    FontConstants.openSans,
    FontWeightManager.bold,
    color,
    height: height,
    decoration: decoration,
  );
}

// semiBold style
TextStyle getSemiBoldStyle({
  double fontSize = FontSize.s12,
  required Color color,
  TextDecoration? decoration,
  double? letterSpacing,
  double? height,
  TextLeadingDistribution? leadingDistribution,
}) {
  return _getTextStyle(
    leadingDistribution: leadingDistribution,
    letterSpacing: letterSpacing,
    fontSize,
    FontConstants.openSans,
    FontWeightManager.semiBold,
    color,
    height: height,
    decoration: decoration,
  );
}

// extrabold text style
TextStyle getExtraBoldStyle({
  double fontSize = FontSize.s12,
  required Color color,
  TextDecoration? decoration,
  double? letterSpacing,
  double? height,
  TextLeadingDistribution? leadingDistribution,
}) {
  return _getTextStyle(
    leadingDistribution: leadingDistribution,
    letterSpacing: letterSpacing,
    fontSize,
    FontConstants.openSans,
    FontWeightManager.extraBold,
    color,
    height: height,
    decoration: decoration,
  );
}

// medium text style
TextStyle getMediumStyle({
  double fontSize = FontSize.s12,
  required Color color,
  TextDecoration? decoration,
  double? letterSpacing,
  double? height,
  TextLeadingDistribution? leadingDistribution,
}) {
  return _getTextStyle(
    leadingDistribution: leadingDistribution,
    letterSpacing: letterSpacing,
    fontSize,
    FontConstants.openSans,
    FontWeightManager.medium,
    color,
    height: height,
    decoration: decoration,
  );
}
