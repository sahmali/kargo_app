import 'package:flutter/material.dart';
import 'package:kargo_app/utils/custom_colors.dart';

class CompleteIcon extends StatelessWidget {
  bool isCompleted;

  CompleteIcon({
    this.isCompleted = false,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            color: this.isCompleted
                ? CustomColors.checkedColor
                : CustomColors.grayIconBackground,
            borderRadius: BorderRadius.circular(50)),
        child: Icon(
          this.isCompleted ? Icons.check : Icons.remove,
          size: 24,
          color: CustomColors.kWhite,
        ));
  }
}
