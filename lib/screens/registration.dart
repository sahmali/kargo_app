import 'package:flutter/material.dart';
import 'package:kargo_app/utils/custom_colors.dart';
import 'package:kargo_app/utils/custom_text_styles.dart';
import 'package:kargo_app/utils/custom_padding.dart';
import 'package:kargo_app/widgets/mainInput.dart';
import 'package:kargo_app/utils/custom_sized_box.dart';
import 'package:kargo_app/widgets/buttons.dart';

class RegistrationScreen extends StatefulWidget {
  final String pageTitle;
  const RegistrationScreen({Key? key, this.pageTitle = 'Registration'})
      : super(key: key);

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: CustomColors.kWhite,
          title: Text(
            widget.pageTitle,
            textAlign: TextAlign.center,
            style: CustomTextStyle.kTextStyle(
              color: CustomColors.blackText,
            ),
          ),
        ),
        body: SingleChildScrollView(
          padding: CustomPadding.paddingH12V16,
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                MainInput(inputPlaceholder: 'ad', inputTitle: 'ad'),
                MainInput(inputPlaceholder: 'Soyad', inputTitle: 'Soyad'),
                MainInput(inputPlaceholder: 'Ata adi', inputTitle: 'Ata adi'),
                MainInput(inputPlaceholder: 'email', inputTitle: 'email'),
                MainInput(inputPlaceholder: 'ad', inputTitle: 'ad'),
                MainInput(inputPlaceholder: 'ad', inputTitle: 'ad'),
                MainInput(inputPlaceholder: 'ad', inputTitle: 'ad'),
                MainInput(inputPlaceholder: 'ad', inputTitle: 'ad'),
                MainInput(inputPlaceholder: 'ad', inputTitle: 'ad'),
                MainInput(inputPlaceholder: 'ad', inputTitle: 'ad'),
                MainInput(inputPlaceholder: 'ad', inputTitle: 'ad'),
                MainInput(inputPlaceholder: 'ad', inputTitle: 'ad'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
