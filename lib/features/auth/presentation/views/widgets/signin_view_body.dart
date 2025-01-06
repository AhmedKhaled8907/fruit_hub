import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_hub/core/helper/build_error_bar.dart';
import 'package:fruit_hub/core/helper/constants.dart';
import 'package:fruit_hub/core/utils/resources/app_assets.dart';
import 'package:fruit_hub/core/utils/resources/app_values.dart';
import 'package:fruit_hub/core/utils/widgets/custom_social_button.dart';
import 'package:fruit_hub/features/auth/presentation/cubits/signin_cubit/signin_cubit.dart';

import '../../../../../core/utils/widgets/custom_divider.dart';
import '../../../../../generated/l10n.dart';
import 'dont_have_an_account.dart';
import 'signin_form.dart';

class SigninViewBody extends StatelessWidget {
  const SigninViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: kHorizontalPadding,
        ),
        child: Column(
          spacing: AppSize.s16,
          children: [
            const SizedBox(height: AppSize.s8),
            const SigninForm(),
            const SizedBox(height: AppSize.s20),
            const DontHaveAnAccount(),
            const SizedBox(height: AppSize.s20),
            const CustomDivider(),
            const SizedBox(height: AppSize.s8),
            CustomSocialButton(
              onPressed: () {
                context.read<SigninCubit>().signinUserWithGoogle();
              },
              title: S.of(context).signinWithGoogle,
              image: AppAssets.imagesGoogleIcon,
            ),
            CustomSocialButton(
              onPressed: () {
                context.read<SigninCubit>().signinUserWithFacebook();
              },
              title: S.of(context).signinWithFacebook,
              image: AppAssets.imagesFacebookIcon,
            ),
            CustomSocialButton(
              onPressed: () {
                // context.read<SigninCubit>().signinUserWithApple();
                buildErrorBar(
                  context,
                  'سوف يتم إضافة تسجيل بواسطة أبل مستقبلا',
                );
              },
              title: S.of(context).signinWithApple,
              image: AppAssets.imagesApplIcon,
            ),
            const SizedBox(height: AppSize.s20),
          ],
        ),
      ),
    );
  }
}
