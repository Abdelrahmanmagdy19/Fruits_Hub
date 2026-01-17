import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:furits_ecommerce_app/core/utils/app_color.dart';
import 'package:furits_ecommerce_app/core/utils/app_text_styels.dart';
import 'package:furits_ecommerce_app/core/widgets/custom_botton.dart';
import 'package:furits_ecommerce_app/core/widgets/custom_text_from_field.dart';
import 'package:furits_ecommerce_app/features/auth/widgets/terms_and_conditions_widget.dart';

class SignupViewBody extends StatelessWidget {
  const SignupViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 24),
            CustomTextFromField(
              hintText: 'الاسم كامل',
              keyboardType: TextInputType.name,
            ),
            SizedBox(height: 16),
            CustomTextFromField(
              hintText: 'البريد الإلكتروني',
              keyboardType: TextInputType.emailAddress,
            ),
            SizedBox(height: 16),
            CustomTextFromField(
              suffixIcon: Icon(Icons.remove_red_eye, color: Color(0xffC9CECF)),
              hintText: 'كلمة المرور',
              keyboardType: TextInputType.visiblePassword,
            ),
            SizedBox(height: 16),
            TermsAndConditionsWidget(),
            SizedBox(height: 30),
            CustomBotton(text: 'إنشاء حساب جديد', onPressed: () {}),
            SizedBox(height: 26),
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: 'تمتلك حساب بالفعل؟ ',
                    style: AppTextStyles.semibold16.copyWith(
                      color: Color(0xFF949D9E),
                    ),
                  ),
                  TextSpan(
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        Navigator.pop(context);
                      },
                    text: ' تسجيل دخول',
                    style: AppTextStyles.semibold16.copyWith(
                      color: AppColor.primaryColor,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
