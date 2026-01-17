import 'package:flutter/material.dart';
import 'package:furits_ecommerce_app/core/widgets/custom_app_bar.dart';
import 'package:furits_ecommerce_app/features/auth/widgets/signup_view_body.dart';

class SignupView extends StatelessWidget {
  const SignupView({super.key});
  static const String routeName = 'signup_view';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(title: 'حساب جديد', context: context),
      body: SignupViewBody(),
    );
  }
}
