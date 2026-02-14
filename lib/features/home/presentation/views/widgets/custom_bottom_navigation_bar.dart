import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:furits_ecommerce_app/core/utils/app_images.dart';
import 'package:furits_ecommerce_app/features/home/domain/entites/bottom_navigation_bar_entitey.dart';
import 'package:furits_ecommerce_app/features/home/presentation/views/widgets/active_item.dart';
import 'package:furits_ecommerce_app/features/home/presentation/views/widgets/in_active_items.dart';
import 'package:furits_ecommerce_app/features/home/presentation/views/widgets/navigation_bar_item.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      decoration: BoxDecoration(
        border: Border(top: BorderSide(color: Colors.grey.shade300)),
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(16),
          topRight: Radius.circular(16),
        ),
      ),
      child: Row(
        children: BottomNavigationBarEntitey.bottomNavigationBarItem.map((e) {
          return NavigationBarItem(navigationBarEntitey: e, isActive: false);
        }).toList(),
      ),
    );
  }
}
