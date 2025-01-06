import 'package:flutter/material.dart';
import 'package:fruit_hub/core/utils/resources/app_routes.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/resources/app_colors.dart';
import '../../../../../core/utils/resources/app_styles.dart';
import '../../../../../generated/l10n.dart';

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
            GoRouter.of(context).push(
              AppRoutes.kSignUpRoute,
            );
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
