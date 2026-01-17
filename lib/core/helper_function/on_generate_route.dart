import 'package:flutter/material.dart';
import 'package:furits_ecommerce_app/features/auth/presentation/views/login_view.dart'
    show LoginView;
import 'package:furits_ecommerce_app/features/auth/presentation/views/signup_view.dart';
import 'package:furits_ecommerce_app/features/on_boarding/views/on_boarding_view.dart';
import 'package:furits_ecommerce_app/features/splash/views/splash_view/splash_view.dart';

Route<dynamic>? onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case SplashView.routeName:
      return MaterialPageRoute(builder: (context) => const SplashView());
    case OnBoardingView.routeName:
      return MaterialPageRoute(builder: (context) => const OnBoardingView());
    case LoginView.routeName:
      return MaterialPageRoute(builder: (context) => const LoginView());
    case SignupView.routeName:
      return MaterialPageRoute(builder: (context) => const SignupView());

    default:
      return MaterialPageRoute(builder: (context) => const Scaffold());
  }
}
