import 'package:flutter/material.dart';
import 'package:kargo_app/utils/custom_colors.dart';
import 'package:kargo_app/utils/custom_text_styles.dart';
import 'package:kargo_app/utils/custom_padding.dart';
import 'package:kargo_app/widgets/mainInput.dart';
import 'package:kargo_app/utils/custom_sized_box.dart';
import 'package:kargo_app/widgets/buttons.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          padding: CustomPadding.paddingH16,
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CustomSizedBox.sizedBoxH150,
                Text(
                  'Daxil olun',
                  style: CustomTextStyle.kTextStyle(
                      fontSize: 25, color: CustomColors.blackText),
                ),
                CustomSizedBox.sizedBoxH16,
                Text(
                  'Zəhmət olmasa daxil olmaq üçün aşağıda qeyd olunan bəndləri doldurun.',
                  textAlign: TextAlign.center,
                  style: CustomTextStyle.kTextStyle(),
                ),
                CustomSizedBox.sizedBoxH40,
                const MainInput(
                  inputPlaceholder: 'username',
                  inputTitle: 'Log in',
                ),
                CustomSizedBox.sizedBoxH16,
                const MainInput(
                  inputPlaceholder: 'password',
                  inputTitle: 'Password',
                ),
                Text(
                  'Şifrəni unutmuşam ?',
                  style: CustomTextStyle.kTextStyle(
                      color: CustomColors.purpleBackground),
                ),
                CustomSizedBox.sizedBoxH150,
                CustomButton(buttonText: 'Daxil ol'),
                CustomSizedBox.sizedBoxH16,
                CustomButton(
                  buttonText: 'Qeydiyyatdan keç',
                  bgColor: CustomColors.grayBackground,
                  textColor: CustomColors.blackText,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
