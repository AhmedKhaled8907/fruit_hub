import 'package:flutter/material.dart';
import 'package:fruit_hub/core/utils/resources/app_colors.dart';
import 'package:fruit_hub/core/utils/resources/app_values.dart';
import 'package:fruit_hub/generated/l10n.dart';

import '../../../../../../core/utils/resources/app_styles.dart';

class FeaturedItemButton extends StatelessWidget {
  const FeaturedItemButton({
    super.key,
    required this.onPressed,
  });
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: AppSize.s32,
      child: TextButton(
        style: TextButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppSize.s4,),
          ),
          backgroundColor: Colors.white,
        ),
        onPressed: onPressed,
        child: FittedBox(
          child: Text(
            S.of(context).shoppingNow,
            style: TextStyles.bold13.copyWith(
              color: AppColors.primaryColor,
            ),
          ),
        ),
      ),
    );
  }
}
