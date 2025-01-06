import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:fruit_hub/core/helper/constants.dart';
import 'package:fruit_hub/core/utils/resources/app_colors.dart';
import 'package:fruit_hub/core/utils/resources/app_routes.dart';
import 'package:fruit_hub/core/utils/resources/app_values.dart';
import 'package:fruit_hub/core/utils/widgets/custom_button.dart';
import 'package:fruit_hub/features/on_boarding/views/widgets/on_boarding_page_view.dart';
import 'package:fruit_hub/generated/l10n.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/services/shared_preferences_singleton.dart';

class OnBoardingViewBody extends StatefulWidget {
  const OnBoardingViewBody({super.key});

  @override
  State<OnBoardingViewBody> createState() => _OnBoardingViewBodyState();
}

class _OnBoardingViewBodyState extends State<OnBoardingViewBody> {
  late PageController _pageController;
  var currentPage = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();

    _pageController.addListener(() {
      setState(() {
        currentPage = _pageController.page!.round();
      });
    });
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
    _pageController.removeListener(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: OnBoardingPageView(
            pageController: _pageController,
          ),
        ),
        DotsIndicator(
          dotsCount: 2,
          decorator: DotsDecorator(
            activeSize: const Size.square(AppSize.s12),
            size: const Size.square(AppSize.s12),
            activeColor: AppColors.primaryColor,
            color: currentPage == 0
                ? AppColors.primaryColor.withValues(
                    alpha: AppSize.s0_5,
                  )
                : AppColors.primaryColor,
          ),
        ),
        const SizedBox(height: AppSize.s26),
        Visibility(
          visible: currentPage == 1,
          maintainSize: true,
          maintainState: true,
          maintainAnimation: true,
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: kHorizontalPadding,
            ),
            child: CustomButton(
              onPressed: () {
                Prefs.setBool(kIsBoardingViewSeen, true);
                GoRouter.of(context).pushReplacement(
                  AppRoutes.kSignInRoute,
                );
              },
              title: S.of(context).onBoardingStartNow,
            ),
          ),
        ),
        const SizedBox(height: AppSize.s40),
      ],
    );
  }
}
