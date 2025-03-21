import 'package:flutter/material.dart';
import 'package:fruit_hub/core/utils/resources/app_values.dart';
import 'package:fruit_hub/features/home/presentation/views/widgets/bottom_nav_bar/navigation_bar_item.dart';

import '../../../../domain/entities/navigation_bar_items_entity.dart';

class CustomBottomNavBar extends StatefulWidget {
  const CustomBottomNavBar({super.key});

  @override
  State<CustomBottomNavBar> createState() => _CustomBottomNavBarState();
}

class _CustomBottomNavBarState extends State<CustomBottomNavBar> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: AppSize.s72,
      decoration: const ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(AppSize.s30),
          ),
        ),
        shadows: [
          BoxShadow(
            color: Color(0x19000000),
            blurRadius: 25,
            offset: Offset(0, -2),
            spreadRadius: 0,
          )
        ],
      ),
      child: Row(
        children: navigationBarItems(context).asMap().entries.map((e) {
          var index = e.key;
          var entity = e.value;

          return Expanded(
            flex: selectedIndex == index ? 3 : 2,
            child: GestureDetector(
              onTap: () {
                setState(() {
                  selectedIndex = index;
                });
              },
              child: NavigationBarItemSelector(
                isSelected: selectedIndex == index,
                entity: entity,
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
