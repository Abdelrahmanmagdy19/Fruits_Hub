import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:furits_ecommerce_app/core/utils/app_color.dart';
import 'package:furits_ecommerce_app/core/utils/app_text_styels.dart';

class ActiveItem extends StatelessWidget {
  const ActiveItem({super.key, required this.image, required this.text});
  final String image;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: EdgeInsets.only(left: 16),
        decoration: BoxDecoration(
          color: Color(0xFFEEEEEE),
          borderRadius: BorderRadius.circular(30),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                color: Color(0xFF1B5E37),
                borderRadius: BorderRadius.circular(30),
              ),
              child: Center(child: SvgPicture.asset(image)),
            ),
            SizedBox(width: 4),
            Text(
              text,
              style: AppTextStyles.semibold11.copyWith(
                color: AppColor.primaryColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
