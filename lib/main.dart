import 'package:flutter/material.dart';
import 'package:furits_ecommerce_app/core/helper_function/on_generate_route.dart';
import 'package:furits_ecommerce_app/features/splash/presentation/view/splash_view/splash_view.dart';

void main() {
  runApp(const FruitHub());
}

class FruitHub extends StatelessWidget {
  const FruitHub({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: onGenerateRoute,
      initialRoute: SplashView.routeName,
    );
  }
}
