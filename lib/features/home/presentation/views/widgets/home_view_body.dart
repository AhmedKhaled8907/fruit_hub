import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_hub/core/helper/constants.dart';
import 'package:fruit_hub/core/products/presentation/cubits/products_cubit/products_cubit.dart';
import 'package:fruit_hub/core/utils/widgets/search_text_field.dart';
import 'package:fruit_hub/features/home/presentation/views/widgets/best_selling/best_selling_grid_view.dart';
import 'package:fruit_hub/features/home/presentation/views/widgets/best_selling/best_selling_header.dart';
import 'package:fruit_hub/features/home/presentation/views/widgets/bottom_nav_bar/custom_home_app_bar.dart';
import 'package:fruit_hub/features/home/presentation/views/widgets/featured_items/featured_list.dart';

class HomeViewBody extends StatefulWidget {
  const HomeViewBody({
    super.key,
  });

  @override
  State<HomeViewBody> createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody> {
  @override
  void initState() {
    super.initState();
    context.read<ProductsCubit>().getBestSellingProducts();
  }

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
            child: const SizedBox(height: 36),
          ),
        ],
      ),
    );
  }
}
