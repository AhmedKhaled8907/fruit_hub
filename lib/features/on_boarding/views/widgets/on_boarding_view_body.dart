import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:fruit_hub/core/utils/app_colors.dart';
import 'package:fruit_hub/features/on_boarding/views/widgets/on_boarding_page_view.dart';

class OnBoardingViewBody extends StatelessWidget {
  const OnBoardingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Expanded(
            child: OnBoardingPageView(),
          ),
          DotsIndicator(
            dotsCount: 2,
            decorator: DotsDecorator(
              activeSize: const Size.square(12),
              size: const Size.square(12),
              activeColor: AppColors.primaryColor,
              color: AppColors.primaryColor.withOpacity(0.5),
            ),
          ),
        ],
      ),
    );
  }
}