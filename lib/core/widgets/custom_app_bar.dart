import 'package:flutter/material.dart';
import 'package:furits_ecommerce_app/core/utils/app_text_styels.dart';

AppBar buildAppBar({required String title, required BuildContext context}) {
  return AppBar(
    backgroundColor: Colors.white,
    centerTitle: true,
    title: Text(title, style: AppTextStyles.bold19),
    leading: GestureDetector(
      onTap: () => Navigator.pop(context),
      child: Icon(Icons.arrow_back_ios),
    ),
  );
}
