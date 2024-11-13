import 'package:flutter/material.dart';
import 'package:fruit_hub/core/utils/app_styles/app_colors.dart';
import 'package:fruit_hub/generated/l10n.dart';

import '../../../../../core/utils/app_styles/app_text_styles.dart';

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
      height: 32,
      child: TextButton(
        style: TextButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4),
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
