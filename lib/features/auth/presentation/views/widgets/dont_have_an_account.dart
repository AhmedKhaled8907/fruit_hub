import 'package:flutter/material.dart';

import '../../../../../core/utils/app_styles/app_colors.dart';
import '../../../../../core/utils/app_styles/app_text_styles.dart';
import '../../../../../generated/l10n.dart';
import '../signup_view.dart';

class DontHaveAnAccount extends StatelessWidget {
  const DontHaveAnAccount({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          S.of(context).dontHaveAccount,
          style: TextStyles.semiBold16.copyWith(
            color: const Color(0xff949D9E),
          ),
        ),
        const SizedBox(width: 4),
        GestureDetector(
          onTap: () {
            Navigator.of(context).pushNamed(SignupView.routeName);
          },
          child: Text(
            S.of(context).createAccount,
            style: TextStyles.semiBold16.copyWith(
              color: AppColors.primaryColor,
            ),
          ),
        ),
      ],
    );
  }
}
