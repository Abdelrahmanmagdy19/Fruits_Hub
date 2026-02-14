import 'package:flutter/material.dart';
import 'package:furits_ecommerce_app/features/home/presentation/views/widgets/fruite_item.dart';

class BestSellingGridView extends StatelessWidget {
  const BestSellingGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverGrid.builder(
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 163,
        mainAxisSpacing: 8,
        crossAxisSpacing: 8,
        childAspectRatio: 163 / 239,
      ),
      itemCount: 10,
      itemBuilder: (context, index) => FruiteItem(),
    );
  }
}
