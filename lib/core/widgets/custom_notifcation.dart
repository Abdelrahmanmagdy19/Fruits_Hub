import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:furits_ecommerce_app/core/utils/app_images.dart';

class CustomNotfication extends StatelessWidget {
  const CustomNotfication({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Color(0xFFEEF8ED),
        borderRadius: BorderRadius.circular(25),
      ),
      child: SvgPicture.asset(Assets.imagesNotification),
    );
  }
}
