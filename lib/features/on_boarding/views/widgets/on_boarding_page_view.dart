import 'package:flutter/material.dart';
import 'package:fruit_hub/core/utils/resources/app_assets.dart';
import 'package:fruit_hub/features/on_boarding/views/widgets/page_view_item.dart';

import '../../../../core/utils/resources/app_colors.dart';
import '../../../../core/utils/resources/app_styles.dart';
import '../../../../generated/l10n.dart';

class OnBoardingPageView extends StatelessWidget {
  const OnBoardingPageView({super.key, required this.pageController});

  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    final isEnglish = Localizations.localeOf(context).languageCode == 'en';

    return PageView(
      controller: pageController,
      children: [
        PageViewItem(
          isVisible: true,
          image: AppAssets.imagesPageViewItem1Image,
          backgroundImage: AppAssets.imagesPageViewItem1BackgroundImage,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                S.of(context).onBoardingTitle1,
                style: TextStyles.bold23,
              ),
              if (!isEnglish)
                Row(
                  children: [
                    Text(
                      S.of(context).hub,
                      style: TextStyles.bold23.copyWith(
                        color: AppColors.secondaryColor,
                      ),
                    ),
                    Text(
                      S.of(context).Fruit,
                      style: TextStyles.bold23.copyWith(
                        color: AppColors.primaryColor,
                      ),
                    ),
                  ],
                ),
            ],
          ),
          subtitle: S.of(context).onBoardingSubtitle1,
        ),
        PageViewItem(
          isVisible: false,
          image: AppAssets.imagesPageViewItem2Image,
          backgroundImage: AppAssets.imagesPageViewItem2BackgroundImage,
          title: Text(
            S.of(context).onBoardingTitle2,
            textAlign: TextAlign.center,
            style: TextStyles.bold23,
          ),
          subtitle: S.of(context).onBoardingSubtitle2,
        ),
      ],
    );
  }
}
