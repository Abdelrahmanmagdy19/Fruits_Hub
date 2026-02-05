import 'package:flutter/material.dart';
import 'package:furits_ecommerce_app/core/utils/app_color.dart';
import 'package:furits_ecommerce_app/core/utils/app_text_styels.dart';

class FeaturedItemButtom extends StatelessWidget {
  const FeaturedItemButtom({super.key, required this.onPressed});
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 32,
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: Colors.white,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
        ),
        onPressed: onPressed,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 28),
          child: FittedBox(
            child: Text(
              'تسوق الان',
              style: AppTextStyles.bold13.copyWith(
                color: AppColor.primaryColor,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
