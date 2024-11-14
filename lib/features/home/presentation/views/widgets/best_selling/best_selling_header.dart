import 'package:flutter/material.dart';
import 'package:fruit_hub/features/best_selling/presentation/views/best_selling_view.dart';
import 'package:fruit_hub/generated/l10n.dart';

import '../../../../../../core/utils/app_styles/app_colors.dart';
import '../../../../../../core/utils/app_styles/app_text_styles.dart';

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
            Navigator.of(context).pushNamed(BestSellingView.routeName);
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
