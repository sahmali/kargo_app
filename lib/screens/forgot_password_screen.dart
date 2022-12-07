import 'package:flutter/material.dart';
import 'package:kargo_app/utils/custom_padding.dart';
import 'package:kargo_app/utils/custom_sized_box.dart';
import 'package:kargo_app/utils/custom_text_styles.dart';
import 'package:kargo_app/utils/custom_colors.dart';
import 'package:kargo_app/widgets/buttons.dart';
import 'package:kargo_app/widgets/mainInput.dart';
import 'package:kargo_app/utils/constants.dart';
import 'package:kargo_app/utils/dividers.dart';
import 'package:kargo_app/utils/complete_icon.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({Key? key}) : super(key: key);

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: CustomPadding.paddingH12V16,
          child: Center(
            child: Column(
              children: [
                CustomSizedBox.sizedBoxH56,
                Image(image: AssetImage('lib/assets/img/lock_img.png')),
                CustomSizedBox.sizedBoxH10,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CompleteIcon(),
                    CompletedIconDivider(),
                    CompleteIcon(),
                    CompletedIconDivider(),
                    CompleteIcon(),
                  ],
                ),
                CustomSizedBox.sizedBoxH34,
                Text(
                  'Şifrəni unutmusan ?',
                  style: CustomTextStyle.black25,
                ),
                CustomSizedBox.sizedBoxH16,
                Text(
                  'Hörmətli müştəri, şifrə unudulduğu halda biz sizin qeydiyyat zamanı daxil etdiyiniz Email unvanınıza yeni şirfə göndərəcəyik.',
                  textAlign: TextAlign.center,
                  style: CustomTextStyle.gray14,
                ),
                CustomSizedBox.sizedBoxH16,
                MainInput(
                    inputPlaceholder: 'Emailinizi daxil edin',
                    inputTitle: 'Email'),
                CustomSizedBox.sizedBoxH4,
                Text(
                  'Email sizə məxsus olduğunu təstiqləyin. Əks halda qaynar xətt ilə əlaqə saxlayın',
                  style: CustomTextStyle.kTextStyle(
                      color: CustomColors.warningColor),
                ),
                Spacer(),
                CustomButton(
                  buttonText: 'Submit',
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
