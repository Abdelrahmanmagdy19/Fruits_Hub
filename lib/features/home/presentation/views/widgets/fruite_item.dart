import 'package:flutter/material.dart';
import 'package:furits_ecommerce_app/core/utils/app_color.dart';
import 'package:furits_ecommerce_app/core/utils/app_images.dart';
import 'package:furits_ecommerce_app/core/utils/app_text_styels.dart';

class FruiteItem extends StatelessWidget {
  const FruiteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xFFF3F5F7),
        borderRadius: BorderRadius.circular(4),
      ),
      child: Stack(
        children: [
          Positioned(
            right: 0,
            top: 0,
            child: IconButton(
              onPressed: () {},
              icon: Icon(Icons.favorite_border),
            ),
          ),
          Column(
            children: [
              SizedBox(height: 16),
              Image.asset(Assets.imagesWatermelonTest),
              SizedBox(height: 24),
              ListTile(
                title: Text(
                  'بطيخ',
                  style: AppTextStyles.semibold13.copyWith(
                    color: Color(0xFF0C0D0D),
                  ),
                ),
                subtitle: Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: '20 جنية',
                        style: AppTextStyles.bold13.copyWith(
                          color: AppColor.secondaryColor,
                        ),
                      ),
                      TextSpan(
                        text: ' / ',
                        style: AppTextStyles.semibold13.copyWith(
                          color: AppColor.lightSecondaryColor,
                        ),
                      ),
                      TextSpan(
                        text: 'الكيلو',
                        style: AppTextStyles.semibold13.copyWith(
                          color: AppColor.secondaryColor,
                        ),
                      ),
                    ],
                  ),
                ),
                trailing: CircleAvatar(
                  backgroundColor: AppColor.primaryColor,
                  child: Icon(Icons.add, color: Colors.white),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
