import 'package:flutter/material.dart';
import 'package:fruit_hub/core/utils/resources/app_values.dart';
import 'package:fruit_hub/features/auth/presentation/views/widgets/have_an_account.dart';

import '../../../../../core/helper/constants.dart';
import 'signup_form.dart';

class SignupViewBody extends StatelessWidget {
  const SignupViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: kHorizontalPadding,
        ),
        child: Column(
          spacing: AppSize.s24,
          children: [
            SignupForm(),
            HaveAnAccount(),
          ],
        ),
      ),
    );
  }
}
