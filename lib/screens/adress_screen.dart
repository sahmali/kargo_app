import 'package:flutter/material.dart';
import 'package:kargo_app/utils/custom_colors.dart';
import 'package:kargo_app/utils/custom_sized_box.dart';
import 'package:kargo_app/utils/custom_text_styles.dart';
import 'package:kargo_app/utils/custom_padding.dart';
import 'package:kargo_app/widgets/adress_tab_bar.dart';

class AdressScreen extends StatelessWidget {
  const AdressScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: CustomPadding.paddingH12V16,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Ünvanlar',
            style: CustomTextStyle.black25,
          ),
          Image(image: AssetImage('lib/assets/img/globuse.png')),
          CustomSizedBox.sizedBoxH12,
          RichText(
            text: TextSpan(
              text:
                  "Hörmətli müştəri, əlavə məlumat əldə etmək üçün qaynar xətt:",
              style: CustomTextStyle.gray14,
              children: <TextSpan>[
                TextSpan(
                    text: ' *1453',
                    style: CustomTextStyle.kTextStyle(
                        color: CustomColors.purpleBackground)),
              ],
            ),
          ),
          AdressTabBar(),
        ],
      ),
    );
  }
}
