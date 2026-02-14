import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:furits_ecommerce_app/core/utils/app_images.dart';

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
      child: Row(children: []),
    );
  }
}

class InActiveItem extends StatelessWidget {
  const InActiveItem({super.key, required this.iconPath});
  final String iconPath;
  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(iconPath);
  }
}

class NavigationBarItem extends StatelessWidget {
  const NavigationBarItem({super.key, required this.isActive});
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return isActive
        ? ActiveItem()
        : InActiveItem(iconPath: Assets.imagesHomeOutline);
  }
}

class ActiveItem extends StatelessWidget {
  const ActiveItem({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
