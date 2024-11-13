import 'package:flutter/material.dart';
import 'package:fruit_hub/core/helper/constants.dart';
import 'package:fruit_hub/core/utils/app_styles/app_text_styles.dart';
import 'package:fruit_hub/core/utils/widgets/custom_app_bar.dart';
import 'package:fruit_hub/core/utils/widgets/custom_button.dart';
import 'package:fruit_hub/core/utils/widgets/custom_text_form_field.dart';

import '../../../../core/helper/my_validators.dart';
import '../../../../generated/l10n.dart';

class ForgotPasswordView extends StatelessWidget {
  const ForgotPasswordView({super.key});
  static const String routeName = '/forgot-password';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(
        context,
        title: S.of(context).forgotPassword,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: kHorizontalPadding,
          ),
          child: Column(
            children: [
              const SizedBox(height: 24),
              Text(
                S.of(context).dontWorry,
                style: TextStyles.semiBold16.copyWith(
                  color: const Color(0xff949D9E),
                ),
              ),
              const SizedBox(height: 32),
              CustomTextFormField(
                validator: (value) {
                  return AppValidators.emailValidator(value);
                },
                hintText: S.of(context).emailSignin,
                keyboardType: TextInputType.emailAddress,
              ),
              const SizedBox(height: 32),
              CustomButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                title: S.of(context).resetPassword,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
