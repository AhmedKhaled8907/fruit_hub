import 'package:flutter/material.dart';
import 'package:fruit_hub/core/utils/resources/app_values.dart';
import 'package:fruit_hub/features/home/presentation/views/widgets/best_selling/best_selling_grid_view.dart';

class BestSellingViewBody extends StatelessWidget {
  const BestSellingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(
        horizontal: AppPadding.p16,
      ),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: SizedBox(height: AppSize.s24),
          ),
          BestSellingGridView(),
          SliverToBoxAdapter(
            child: SizedBox(height: AppSize.s24),
          ),
        ],
      ),
    );
  }
}
