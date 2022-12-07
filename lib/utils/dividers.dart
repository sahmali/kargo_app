import 'package:flutter/material.dart';
import 'custom_colors.dart';

class CompletedIconDivider extends StatelessWidget {
  bool isCompleted;
  CompletedIconDivider({
    this.isCompleted = false,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 25,
      height: 4,
      decoration: BoxDecoration(
          color: this.isCompleted
              ? CustomColors.checkedColor
              : CustomColors.grayIconBackground),
      margin: EdgeInsets.symmetric(horizontal: 5),
    );
  }
}
