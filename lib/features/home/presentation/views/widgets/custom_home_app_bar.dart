import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:furits_ecommerce_app/core/utils/app_images.dart';
import 'package:furits_ecommerce_app/core/utils/app_text_styels.dart';

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
      trailing: Container(
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Color(0xFFEEF8ED),
          borderRadius: BorderRadius.circular(25),
        ),
        child: SvgPicture.asset(Assets.imagesNotification),
      ),
    );
  }
}
