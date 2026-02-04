import 'package:flutter/material.dart';
import 'package:furits_ecommerce_app/features/home/presentation/views/widgets/custom_home_app_bar.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [SliverToBoxAdapter(child: CustomHomeAppBar())],
      ),
    );
  }
}
