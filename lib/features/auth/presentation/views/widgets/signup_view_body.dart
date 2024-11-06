import 'package:flutter/material.dart';
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
          children: [
            SizedBox(height: 24),
            SignupForm(),
            SizedBox(height: 24),
            HaveAnAccount(),
          ],
        ),
      ),
    );
  }
}
