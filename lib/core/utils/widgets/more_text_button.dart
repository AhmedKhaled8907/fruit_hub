import 'package:flutter/material.dart';
import 'package:fruit_hub/core/utils/resources/app_values.dart';
import '../../../generated/l10n.dart';
import '../resources/app_colors.dart';
import '../resources/app_styles.dart';

class MoreTextButton extends StatelessWidget {
  const MoreTextButton({
    super.key,
    required this.onTap,
  });

  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(
        AppSize.s50,
      ),
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(
          AppPadding.p8,
        ),
        child: Text(
          S.of(context).more,
          style: TextStyles.regular13.copyWith(
            color: AppColors.lightGreyColor,
          ),
        ),
      ),
    );
  }
}
