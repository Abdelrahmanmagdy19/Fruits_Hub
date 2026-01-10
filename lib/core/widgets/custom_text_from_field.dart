import 'package:flutter/material.dart';
import 'package:furits_ecommerce_app/core/utils/app_text_styels.dart';

class CustomTextFromField extends StatelessWidget {
  const CustomTextFromField({
    super.key,
    required this.hintText,
    required this.keyboardType,
    this.suffixIcon,
  });
  final String hintText;
  final TextInputType keyboardType;
  final Widget? suffixIcon;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: keyboardType,
      decoration: InputDecoration(
        filled: true,
        hintText: hintText,
        suffixIcon: suffixIcon,
        hintStyle: AppTextStyles.bold13.copyWith(color: Color(0xFF949D9E)),
        fillColor: const Color(0xFFF9FAFA),
        border: builldBorder(),
        enabledBorder: builldBorder(),
        focusedBorder: builldBorder(),
      ),
    );
  }

  OutlineInputBorder builldBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(4),
      borderSide: BorderSide(color: Color(0xFFE6E9E9), width: 1),
    );
  }
}
