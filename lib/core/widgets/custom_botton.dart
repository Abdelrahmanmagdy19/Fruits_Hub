import 'package:flutter/material.dart';
import 'package:furits_ecommerce_app/core/utils/app_color.dart';

class CustomBotton extends StatelessWidget {
  const CustomBotton({super.key, this.onPressed, required this.text});
  final void Function()? onPressed;
  final String text;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 54,
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: AppColor.primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
        ),
        onPressed: onPressed,
        child: Text(text, style: TextStyle(color: Colors.white)),
      ),
    );
  }
}
