import 'package:flutter/material.dart';
import 'package:kargo_app/utils/custom_colors.dart';
import 'package:kargo_app/utils/constants.dart';
import 'package:kargo_app/utils/custom_text_styles.dart';

class CustomButton extends StatelessWidget {
  final Color bgColor;
  final Color textColor;
  final double radius;
  final String buttonText;
  final double fontSize;
  final EdgeInsets padding;
  final double buttonWidth;
  const CustomButton(
      {Key? key,
      this.bgColor = CustomColors.purpleBackground,
      this.textColor = CustomColors.kWhite,
      required this.buttonText,
      this.fontSize = 14,
      this.padding = const EdgeInsets.symmetric(vertical: 16),
      this.buttonWidth = double.infinity,
      this.radius = 12})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: bgColor, borderRadius: BorderRadius.circular(radius)),
      width: buttonWidth,
      child: Text(
        buttonText,
        style: TextStyle(color: textColor, fontSize: fontSize),
      ),
    );
  }
}
