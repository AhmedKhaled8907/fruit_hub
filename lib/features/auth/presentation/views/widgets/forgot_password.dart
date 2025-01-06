import 'package:flutter/material.dart';
import 'package:fruit_hub/core/utils/resources/app_routes.dart';
import 'package:fruit_hub/generated/l10n.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/resources/app_colors.dart';
import '../../../../../core/utils/resources/app_styles.dart';

class ForgotPasswordWidget extends StatelessWidget {
  const ForgotPasswordWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(
          AppRoutes.kForgotPasswordRoute,
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
