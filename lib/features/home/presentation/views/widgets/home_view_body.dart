import 'package:flutter/material.dart';
import 'package:fruit_hub/core/helper/constants.dart';
import 'package:fruit_hub/core/utils/widgets/search_text_field.dart';
import 'package:fruit_hub/features/home/presentation/views/widgets/featured_list.dart';
import 'custom_home_app_bar.dart';


class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: kHorizontalPadding,
            ),
            child: Column(
              children: [
                CustomHomeAppBar(),
                const SizedBox(height: kTopPadding),
                SearchTextField(),
                const SizedBox(height: kTopPadding),
                FeaturedList(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
