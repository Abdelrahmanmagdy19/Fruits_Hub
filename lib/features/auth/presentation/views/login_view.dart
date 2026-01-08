import 'package:flutter/material.dart';
import 'package:furits_ecommerce_app/core/widgets/custom_app_bar.dart';

import '../../widgets/login_view_body.dart' show LoginViewBody;

class LoginView extends StatelessWidget {
  const LoginView({super.key});
  static const String routeName = 'login';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(title: 'تسجيل دخول', context: context),
      body: const LoginViewBody(),
    );
  }
}
