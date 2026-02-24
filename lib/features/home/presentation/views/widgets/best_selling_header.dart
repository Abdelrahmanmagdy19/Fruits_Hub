import 'package:flutter/material.dart';
import 'package:furits_ecommerce_app/core/utils/app_text_styels.dart';
import 'package:furits_ecommerce_app/features/best_selling_fruits/presentation/views/best_selling_view.dart';

class BestSellingHeader extends StatelessWidget {
  const BestSellingHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, BestSellingView.routeName),
      child: Row(
        children: [
          Text('الأكثر مبيعًا', style: AppTextStyles.bold16),
          Spacer(),
          Text(
            'المزيد',
            style: AppTextStyles.regular13.copyWith(color: Color(0xFF949D9E)),
          ),
        ],
      ),
    );
  }
}
