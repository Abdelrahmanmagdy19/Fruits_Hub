import 'package:flutter/material.dart';
import 'package:furits_ecommerce_app/core/utils/app_color.dart';
import 'package:furits_ecommerce_app/core/utils/app_text_styels.dart';
import 'package:furits_ecommerce_app/features/auth/presentation/views/signup_view.dart';

class DontHaveAnAccountWidget extends StatelessWidget {
  const DontHaveAnAccountWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'لا تملك حساب؟',
          style: AppTextStyles.regular16.copyWith(color: Color(0xFF949D9E)),
        ),
        GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, SignupView.routeName);
          },
          child: Text(
            'قم بإنشاء حساب',
            style: AppTextStyles.semibold16.copyWith(
              color: AppColor.primaryColor,
            ),
          ),
        ),
      ],
    );
  }
}
