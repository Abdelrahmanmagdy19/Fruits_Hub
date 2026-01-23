import 'package:flutter/material.dart';
import 'package:furits_ecommerce_app/constants.dart';
import 'package:furits_ecommerce_app/core/utils/app_color.dart';
import 'package:furits_ecommerce_app/core/utils/app_images.dart';
import 'package:furits_ecommerce_app/core/utils/app_text_styels.dart';
import 'package:furits_ecommerce_app/core/widgets/custom_botton.dart';
import 'package:furits_ecommerce_app/core/widgets/custom_text_from_field.dart';
import 'package:furits_ecommerce_app/features/auth/widgets/dont_have_an_account_wigdet.dart';
import 'package:furits_ecommerce_app/features/auth/widgets/or_divider.dart';
import 'package:furits_ecommerce_app/features/auth/widgets/social_login_button.dart';

class SigninViewBody extends StatelessWidget {
  const SigninViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kHorizintalPadding),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 24),
            CustomTextFromField(
              hintText: 'البريد الإلكتروني',
              keyboardType: TextInputType.emailAddress,
            ),
            SizedBox(height: 16),
            CustomTextFromField(
              hintText: 'كلمة المرور',
              keyboardType: TextInputType.visiblePassword,
              suffixIcon: Icon(Icons.remove_red_eye, color: Color(0xffC9CECF)),
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'نسيت كلمة المرور؟',
                  textAlign: TextAlign.left,
                  style: AppTextStyles.semibold13.copyWith(
                    color: AppColor.lightPrimaryColor,
                  ),
                ),
              ],
            ),
            SizedBox(height: 32),
            CustomBotton(text: 'تسجيل دخول', onPressed: () {}),
            SizedBox(height: 32),
            DontHaveAnAccountWidget(),
            SizedBox(height: 32),
            OrDivider(),
            SizedBox(height: 16),
            SocialLoginButton(
              onPressed: () {},
              iconPath: Assets.imagesGoogleIcon,
              text: 'تسجيل بواسطة جوجل',
            ),
            SizedBox(height: 16),
            SocialLoginButton(
              onPressed: () {},
              iconPath: Assets.imagesAppleIcon,
              text: 'تسجيل بواسطة أبل',
            ),
            SizedBox(height: 16),
            SocialLoginButton(
              onPressed: () {},
              iconPath: Assets.imagesFacebookIcon,
              text: 'تسجيل بواسطة فيسبوك',
            ),
          ],
        ),
      ),
    );
  }
}
