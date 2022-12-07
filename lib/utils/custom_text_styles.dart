import 'package:flutter/material.dart';
import 'custom_colors.dart';

class CustomTextStyle {
  static TextStyle black25 =
      const TextStyle(color: CustomColors.blackText, fontSize: 25);
  static const TextStyle gray14 = TextStyle(
    color: CustomColors.grayText,
    fontSize: 14,
  );
  static TextStyle kTextStyle(
          {double fontSize = 14, Color color = CustomColors.grayText}) =>
      TextStyle(
        color: color,
        fontSize: fontSize,
      );
}
