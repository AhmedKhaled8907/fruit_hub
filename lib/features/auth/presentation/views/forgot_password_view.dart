import 'package:flutter/material.dart';
import 'package:fruit_hub/core/helper/constants.dart';
import 'package:fruit_hub/core/utils/resources/app_styles.dart';
import 'package:fruit_hub/core/utils/resources/app_values.dart';
import 'package:fruit_hub/core/utils/widgets/build_app_bar.dart';
import 'package:fruit_hub/core/utils/widgets/custom_button.dart';
import 'package:fruit_hub/core/utils/widgets/custom_text_form_field.dart';

import '../../../../core/helper/app_validators.dart';
import '../../../../generated/l10n.dart';

class ForgotPasswordView extends StatelessWidget {
  const ForgotPasswordView({super.key});
  // static const String routeName = '/forgot-password';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(
        context,
        title: S.of(context).forgotPassword,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: kHorizontalPadding,
          ),
          child: Column(
            spacing: AppSize.s32,
            children: [
              Text(
                S.of(context).dontWorry,
                style: TextStyles.semiBold16.copyWith(
                  color: const Color(0xff949D9E),
                ),
              ),
              CustomTextFormField(
                validator: (value) {
                  return AppValidators.emailValidator(value);
                },
                hintText: S.of(context).emailSignin,
                keyboardType: TextInputType.emailAddress,
              ),
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
