import 'package:flutter/material.dart';

import '../../../../../core/utils/app_styles/app_colors.dart';
import '../../../../../core/utils/app_styles/app_text_styles.dart';

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
          'الأكثر مبيعًا',
          style: TextStyles.bold16,
        ),
        Text(
          'المزيد',
          style: TextStyles.regular13.copyWith(
            color: AppColors.lightGreyColor,
          ),
        ),
      ],
    );
  }
}
