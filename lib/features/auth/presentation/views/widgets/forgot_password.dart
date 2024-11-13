import 'package:flutter/material.dart';
import 'package:fruit_hub/generated/l10n.dart';

import '../../../../../core/utils/app_styles/app_colors.dart';
import '../../../../../core/utils/app_styles/app_text_styles.dart';
import '../forgot_password_view.dart';

class ForgotPasswordWidget extends StatelessWidget {
  const ForgotPasswordWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed(
          ForgotPasswordView.routeName,
        );
      },
      child: Align(
        alignment: AlignmentDirectional.centerEnd,
        child: Text(
          S.of(context).forgotPassword,
          style: TextStyles.semiBold13.copyWith(
            color: AppColors.lightPrimaryColor,
          ),
        ),
      ),
    );
  }
}
