import 'package:flutter/material.dart';
import 'package:furits_ecommerce_app/core/utils/app_text_styels.dart';

class OrDivider extends StatelessWidget {
  const OrDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: Divider(color: Color(0xFFDCDEDE))),
        Text('  أو  ', style: AppTextStyles.semibold16),
        Expanded(child: Divider(color: Color(0xFFDCDEDE))),
      ],
    );
  }
}
