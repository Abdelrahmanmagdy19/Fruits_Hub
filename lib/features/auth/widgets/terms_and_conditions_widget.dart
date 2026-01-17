import 'package:flutter/material.dart';
import 'package:furits_ecommerce_app/core/utils/app_color.dart';
import 'package:furits_ecommerce_app/core/utils/app_text_styels.dart';
import 'package:furits_ecommerce_app/features/auth/widgets/custom_check_box.dart';

class TermsAndConditionsWidget extends StatefulWidget {
  const TermsAndConditionsWidget({super.key});

  @override
  State<TermsAndConditionsWidget> createState() =>
      _TermsAndConditionsWidgetState();
}

bool isChecked = false;

class _TermsAndConditionsWidgetState extends State<TermsAndConditionsWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomCheckBox(
          isChecked: isChecked,
          onChanged: (value) {
            isChecked = value;
            setState(() {});
          },
        ),
        SizedBox(width: 16),
        Expanded(
          child: Text.rich(
            TextSpan(
              text: 'من خلال إنشاء حساب ، فإنك توافق على ',
              style: AppTextStyles.semibold13.copyWith(
                color: Color(0xFF949D9E),
              ),
              children: [
                TextSpan(
                  text: 'الشروط والأحكام الخاصة بنا',
                  style: AppTextStyles.semibold13.copyWith(
                    color: AppColor.lightPrimaryColor,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
