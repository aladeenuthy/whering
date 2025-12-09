import "package:flutter/material.dart";

class AppColors {
  static Color white = HexColor.fromHex("#FFFFFF");
  static Color primary = HexColor.fromHex("#CEB4FE");
  static Color secondary = HexColor.fromHex("#C8FF00");
  static Color textColor = HexColor.fromHex("#242424");
  static Color appBgColor = HexColor.fromHex("#F5F5F5");
  static Color grey = HexColor.fromHex("#D6D6D6");
}

extension HexColor on Color {
  static Color fromHex(String hexColorString) {
    hexColorString = hexColorString.replaceAll("#", "").trim();

    if (hexColorString.length == 6) {
      hexColorString = "FF$hexColorString"; 
    }
    return Color(int.parse(hexColorString, radix: 16));
  }
}

