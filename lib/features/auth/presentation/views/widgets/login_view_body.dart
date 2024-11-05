import 'package:flutter/material.dart';
import 'package:fruit_hub/core/helper/constants.dart';
import 'package:fruit_hub/core/utils/app_styles/app_images.dart';
import 'package:fruit_hub/core/utils/widgets/custom_social_button.dart';
import 'package:fruit_hub/core/utils/widgets/custom_text_form_field.dart';

import '../../../../../core/utils/app_styles/app_colors.dart';
import '../../../../../core/utils/app_styles/app_text_styles.dart';
import '../../../../../core/utils/widgets/custom_button.dart';
import '../../../../../core/utils/widgets/custom_divider.dart';
import 'dont_have_an_account.dart';
import '../forgot_password.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

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
            const CustomTextFormField(
              hintText: 'البريد الإلكتروني',
              keyboardType: TextInputType.emailAddress,
            ),
            const SizedBox(height: 16),
            const CustomTextFormField(
              hintText: 'كلمة المرور',
              keyboardType: TextInputType.visiblePassword,
              suffixIcon: Icon(
                Icons.visibility,
                color: Color(0xffC9CECF),
              ),
            ),
            const SizedBox(height: 16),
            GestureDetector(
              onTap: () {
                Navigator.of(context).pushNamed(
                  ForgotPasswordView.routeName,
                );
              },
              child: Align(
                alignment: AlignmentDirectional.centerEnd,
                child: Text(
                  'نسيت كلمة المرور؟',
                  style: TextStyles.semiBold13.copyWith(
                    color: AppColors.lightPrimaryColor,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 36),
            CustomButton(
              title: 'تسجيل الدخول',
              onPressed: () {},
            ),
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
