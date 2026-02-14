import 'package:flutter/material.dart';
import 'package:furits_ecommerce_app/features/home/presentation/views/widgets/custom_bottom_navigation_bar.dart';
import 'package:furits_ecommerce_app/features/home/presentation/views/widgets/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  static const String routeName = 'Home';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: HomeViewBody()),
      bottomNavigationBar: CustomBottomNavigationBar(),
    );
  }
}
