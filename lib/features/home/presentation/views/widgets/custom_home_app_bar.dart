import 'package:flutter/material.dart';
import 'package:furits_ecommerce_app/core/utils/app_images.dart';
import 'package:furits_ecommerce_app/core/utils/app_text_styels.dart';
import 'package:furits_ecommerce_app/core/widgets/custom_notifcation.dart';

class CustomHomeAppBar extends StatelessWidget {
  const CustomHomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.asset(Assets.imagesMaskGroup),
      title: Text(
        "صباح الخير..!",
        textAlign: TextAlign.right,
        style: AppTextStyles.regular16.copyWith(color: Color(0xFF949D9E)),
      ),
      subtitle: Text(
        "أحمد مصطفي",
        textAlign: TextAlign.right,
        style: AppTextStyles.bold16.copyWith(color: Color(0xFF0C0D0D)),
      ),
      trailing: CustomNotfication(),
    );
  }
}
