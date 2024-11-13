import 'package:flutter/material.dart';

import '../../../../../core/utils/widgets/fruit_item.dart';

class BestSellingGridView extends StatelessWidget {
  const BestSellingGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverGrid.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 175 / 214,
        mainAxisSpacing: 8,
        crossAxisSpacing: 16,
      ),
      itemCount: 6,
      itemBuilder: (BuildContext context, int index) {
        return FruitItem();
      },
    );
  }
}