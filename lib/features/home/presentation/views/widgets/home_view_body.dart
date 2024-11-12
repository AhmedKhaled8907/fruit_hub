import 'package:flutter/material.dart';
import 'package:fruit_hub/core/helper/constants.dart';
import 'package:fruit_hub/core/utils/widgets/search_text_field.dart';
import 'package:fruit_hub/features/home/presentation/views/widgets/best_selling_grid_view.dart';
import 'package:fruit_hub/features/home/presentation/views/widgets/featured_list.dart';
import 'best_selling_header.dart';
import 'custom_home_app_bar.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: kHorizontalPadding,
      ),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              children: [
                CustomHomeAppBar(),
                const SizedBox(height: kTopPadding),
                SearchTextField(),
                const SizedBox(height: kTopPadding),
                FeaturedList(),
                const SizedBox(height: kTopPadding),
                BestSellingHeader(),
                const SizedBox(height: kTopPadding),
              ],
            ),
          ),
          BestSellingGridView(),
          SliverToBoxAdapter(
            child: const SizedBox(
              height: kBottomNavigationBarHeight,
            ),
          ),
        ],
      ),
    );
  }
}
