import 'package:flutter/material.dart';
import 'package:furits_ecommerce_app/core/utils/app_text_styels.dart';
import 'package:furits_ecommerce_app/core/widgets/custom_notifcation.dart';

AppBar buildAppBar() {
  return AppBar(
    backgroundColor: Colors.transparent,
    centerTitle: true,
    title: Text('الأكثر مبيعًا', style: AppTextStyles.bold19),
    actions: [
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: CustomNotfication(),
      ),
    ],
  );
}
