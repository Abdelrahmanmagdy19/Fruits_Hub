import 'package:flutter/material.dart';
import 'package:furits_ecommerce_app/features/home/domain/entites/bottom_navigation_bar_entitey.dart';
import 'package:furits_ecommerce_app/features/home/presentation/views/widgets/navigation_bar_item.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar({super.key});

  @override
  State<CustomBottomNavigationBar> createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  int selectedIndex = 0;
  @override
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
        children: BottomNavigationBarEntitey.bottomNavigationBarItem
            .asMap()
            .entries
            .map((e) {
              var index = e.key;
              var entity = e.value;
              return Expanded(
                flex: index == selectedIndex ? 3 : 2,
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedIndex = index;
                    });
                  },
                  child: NavigationBarItem(
                    isActive: selectedIndex == index,
                    navigationBarEntitey: entity,
                  ),
                ),
              );
            })
            .toList(),
      ),
    );
  }
}
