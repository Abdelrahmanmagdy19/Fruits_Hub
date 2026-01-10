import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:furits_ecommerce_app/core/utils/app_text_styels.dart';

class SocialLoginButton extends StatelessWidget {
  const SocialLoginButton({
    super.key,
    required this.text,
    required this.onPressed,
    required this.iconPath,
  });
  final String text;
  final void Function()? onPressed;
  final String iconPath;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 56,
      child: TextButton(
        style: TextButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          side: BorderSide(color: Color(0xFFDDDFDF), width: 1),
        ),
        onPressed: onPressed,
        child: ListTile(
          visualDensity: VisualDensity(vertical: VisualDensity.minimumDensity),
          leading: SvgPicture.asset(iconPath),
          title: Text(
            text,
            style: AppTextStyles.semibold13.copyWith(color: Colors.black),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
