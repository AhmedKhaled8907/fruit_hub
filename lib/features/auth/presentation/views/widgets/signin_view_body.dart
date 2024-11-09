import 'package:flutter/material.dart';
import 'package:fruit_hub/core/helper/constants.dart';
import 'package:fruit_hub/core/utils/app_styles/app_images.dart';
import 'package:fruit_hub/core/utils/widgets/custom_social_button.dart';

import '../../../../../core/utils/widgets/custom_divider.dart';
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
          children: [
            const SizedBox(height: 24),
            const SigninForm(),
            const SizedBox(height: 36),
            const DontHaveAnAccount(),
            const SizedBox(height: 36),
            const CustomDivider(),
            const SizedBox(height: 24),
            CustomSocialButton(
              onPressed: () {},
              title: 'تسجيل بواسطة جوجل',
              image: Assets.imagesGoogleIcon,
            ),
            const SizedBox(height: 16),
            CustomSocialButton(
              onPressed: () {},
              title: 'تسجيل بواسطة أبل',
              image: Assets.imagesApplIcon,
            ),
            const SizedBox(height: 16),
            CustomSocialButton(
              onPressed: () {},
              title: 'تسجيل بواسطة فيسبوك',
              image: Assets.imagesFacebookIcon,
            ),
            const SizedBox(height: 36),
          ],
        ),
      ),
    );
  }
}
