import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:furits_ecommerce_app/core/utils/app_images.dart';
import 'package:furits_ecommerce_app/core/utils/app_text_styels.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Color(0x0A000000),
            blurRadius: 9,
            offset: Offset(0, 2),
            spreadRadius: 0,
          ),
        ],
      ),
      child: TextField(
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
          filled: true,
          hintText: 'ابحث عن.......',
          prefixIcon: SizedBox(
            width: 20,
            child: Center(child: SvgPicture.asset(Assets.imagesSearch)),
          ),
          suffixIcon: SizedBox(
            width: 20,
            child: Center(child: SvgPicture.asset(Assets.imagesFilter)),
          ),
          hintStyle: AppTextStyles.regular13.copyWith(color: Color(0xFF949D9E)),
          fillColor: Colors.white,
          border: builldBorder(),
          enabledBorder: builldBorder(),
          focusedBorder: builldBorder(),
        ),
      ),
    );
  }

  OutlineInputBorder builldBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(4),
      borderSide: BorderSide(color: Colors.white, width: 1),
    );
  }
}
