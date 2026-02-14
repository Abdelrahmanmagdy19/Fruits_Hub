import 'package:flutter/material.dart';
import 'package:furits_ecommerce_app/features/home/domain/entites/bottom_navigation_bar_entitey.dart';
import 'package:furits_ecommerce_app/features/home/presentation/views/widgets/active_item.dart';
import 'package:furits_ecommerce_app/features/home/presentation/views/widgets/in_active_items.dart';

class NavigationBarItem extends StatelessWidget {
  const NavigationBarItem({
    super.key,
    required this.isActive,
    required this.navigationBarEntitey,
  });
  final bool isActive;
  final BottomNavigationBarEntitey navigationBarEntitey;
  @override
  Widget build(BuildContext context) {
    return isActive
        ? ActiveItem()
        : InActiveItem(iconPath: navigationBarEntitey.inActiveImage);
  }
}
