import 'package:flutter/material.dart';
import 'package:kargo_app/utils/custom_colors.dart';

class CustomBorders {
  static BorderRadius get radius16 => BorderRadius.circular(16);
  static OutlineInputBorder get errorBorder => OutlineInputBorder(
      borderRadius: BorderRadius.circular(16),
      borderSide: BorderSide(
        width: 1,
        color: CustomColors.errorColor,
      ));
}
