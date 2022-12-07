import 'package:flutter/material.dart';
import 'package:kargo_app/utils/custom_padding.dart';
import 'package:kargo_app/utils/custom_sized_box.dart';
import 'package:kargo_app/utils/custom_colors.dart';
import 'package:kargo_app/utils/custom_text_styles.dart';
import 'package:kargo_app/utils/custom_borders.dart';

class MainInput extends StatefulWidget {
  final String inputTitle;
  final String inputPlaceholder;

  const MainInput({
    super.key,
    required this.inputPlaceholder,
    required this.inputTitle,
  });

  @override
  State<MainInput> createState() => _MainInputState();
}

class _MainInputState extends State<MainInput> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.inputTitle,
          style: CustomTextStyle.gray14,
          textAlign: TextAlign.left,
        ),
        CustomSizedBox.sizedBoxH4,
        Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: CustomColors.grayBackground,
              borderRadius: CustomBorders.radius16,
            ),
            child: TextFormField(
              decoration: InputDecoration(
                  hintText: widget.inputPlaceholder,
                  errorBorder: CustomBorders.errorBorder,
                  contentPadding: CustomPadding.paddingH12V16,
                  border: InputBorder.none),
            )),
        CustomSizedBox.sizedBoxH16,
      ],
    );
  }
}
