import 'package:flutter/material.dart';
import 'package:fruit_hub/features/home/presentation/views/widgets/bottom_nav_bar/in_active_item.dart';

import '../../../../domain/entities/navigation_bar_items_entity.dart';
import 'active_item.dart';

class NavigationBarItemSelector extends StatelessWidget {
  const NavigationBarItemSelector({
    super.key,
    required this.isSelected,
    required this.entity,
  });

  final bool isSelected;
  final NavigationBarItemsEntity entity;

  @override
  Widget build(BuildContext context) {
    return isSelected
        ? ActiveItem(
            image: entity.activeItem,
            name: entity.name,
          )
        : InActiveItem(image: entity.inActiveItem);
  }
}
