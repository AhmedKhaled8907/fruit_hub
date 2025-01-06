import 'package:flutter/material.dart';
import 'package:fruit_hub/core/utils/resources/app_routes.dart';
import 'package:fruit_hub/generated/l10n.dart';
import 'package:go_router/go_router.dart';

import '../../../../../../core/utils/resources/app_colors.dart';
import '../../../../../../core/utils/resources/app_styles.dart';

class BestSellingHeader extends StatelessWidget {
  const BestSellingHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          S.of(context).bestSelling,
          style: TextStyles.bold16,
        ),
        GestureDetector(
          onTap: () {
            GoRouter.of(context).push(
              AppRoutes.kBestSellingRoute,
            );
          },
          child: Text(
            S.of(context).more,
            style: TextStyles.regular13.copyWith(
              color: AppColors.lightGreyColor,
            ),
          ),
        ),
      ],
    );
  }
}
