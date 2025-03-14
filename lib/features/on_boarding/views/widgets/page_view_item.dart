import 'package:flutter/material.dart';
import 'package:fruit_hub/core/helper/constants.dart';
import 'package:fruit_hub/core/services/shared_preferences_singleton.dart';
import 'package:fruit_hub/core/utils/resources/app_colors.dart';
import 'package:fruit_hub/core/utils/resources/app_routes.dart';
import 'package:fruit_hub/core/utils/resources/app_values.dart';
import 'package:go_router/go_router.dart';
import 'package:svg_flutter/svg.dart';

import '../../../../core/utils/resources/app_styles.dart';
import '../../../../generated/l10n.dart';

class PageViewItem extends StatelessWidget {
  const PageViewItem({
    super.key,
    required this.image,
    required this.backgroundImage,
    required this.subtitle,
    required this.title,
    required this.isVisible,
  });

  final String image, backgroundImage;
  final String subtitle;
  final Widget title;
  final bool isVisible;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: context.height * 0.5,
          width: double.infinity,
          child: Stack(
            children: [
              Positioned.fill(
                child: SvgPicture.asset(
                  backgroundImage,
                  fit: BoxFit.fill,
                ),
              ),
              Positioned(
                bottom: 0,
                right: 0,
                left: 0,
                child: SvgPicture.asset(image),
              ),
              GestureDetector(
                onTap: () {
                  Prefs.setBool(kIsBoardingViewSeen, true);
                  GoRouter.of(context).pushReplacement(
                    AppRoutes.kSignInRoute,
                  );
                },
                child: Visibility(
                  visible: isVisible,
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Text(
                      S.of(context).skip,
                      style: TextStyles.semiBold16.copyWith(),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: AppSize.s64),
        title,
        const SizedBox(height: AppSize.s24),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: AppPadding.p36,
          ),
          child: Text(
            subtitle,
            textAlign: TextAlign.center,
            style: TextStyles.semiBold13.copyWith(
              color: AppColors.greyColor,
            ),
          ),
        ),
      ],
    );
  }
}
