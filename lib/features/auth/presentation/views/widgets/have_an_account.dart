import 'package:flutter/material.dart';
import 'package:fruit_hub/generated/l10n.dart';

import '../../../../../core/utils/app_styles/app_colors.dart';
import '../../../../../core/utils/app_styles/app_text_styles.dart';

class HaveAnAccount extends StatelessWidget {
  const HaveAnAccount({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          S.of(context).haveAnAccount,
          style: TextStyles.semiBold16.copyWith(
            color: const Color(0xff949D9E),
          ),
        ),
        const SizedBox(width: 4),
        GestureDetector(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: Text(
            S.of(context).signin,
            style: TextStyles.semiBold16.copyWith(
              color: AppColors.primaryColor,
            ),
          ),
        ),
      ],
    );
  }
}
