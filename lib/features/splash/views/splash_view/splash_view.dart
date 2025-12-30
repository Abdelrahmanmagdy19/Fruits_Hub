import 'package:flutter/material.dart';
import 'package:furits_ecommerce_app/features/splash/views/widgets/splash_view_body/splash_view_body.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});
  static const String routeName = 'splash';
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SplashViewBody());
  }
}
