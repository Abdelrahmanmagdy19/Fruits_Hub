import 'package:flutter/material.dart';
import 'package:furits_ecommerce_app/features/on_boarding/views/widgets/on_boarding_view_body.dart';

class OnBoardingView extends StatelessWidget {
  const OnBoardingView({super.key});
  static const String routeName = 'onBoarding';
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(child: OnBoardingViewBody()));
  }
}
