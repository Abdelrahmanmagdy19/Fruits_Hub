import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:furits_ecommerce_app/core/utils/app_color.dart';
import 'package:furits_ecommerce_app/core/utils/app_images.dart';

class CustomCheckBox extends StatelessWidget {
  const CustomCheckBox({
    super.key,
    required this.isChecked,
    required this.onChanged,
  });
  final bool isChecked;
  final ValueChanged<bool> onChanged;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onChanged(!isChecked);
      },
      child: AnimatedContainer(
        duration: Duration(milliseconds: 100),
        width: 24,
        height: 24,
        decoration: ShapeDecoration(
          color: isChecked ? AppColor.primaryColor : Colors.white,
          shape: RoundedRectangleBorder(
            side: BorderSide(
              color: isChecked ? AppColor.primaryColor : Color(0xFFCED4DA),
              width: 2,
            ),
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        child: isChecked
            ? Padding(
                padding: const EdgeInsets.all(2),
                child: SvgPicture.asset(Assets.imagesCheckIcon),
              )
            : null,
      ),
    );
  }
}
