import 'package:flutter/material.dart';
import 'package:fruit_hub/core/utils/widgets/custom_app_bar.dart';

import 'widgets/signup_view_body.dart';

class SignupView extends StatelessWidget {
  const SignupView({super.key});
  static const routeName = '/signup';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(
        context,
        title: 'حساب جديد',
      ),
      body: const SignupViewBody(),
    );
  }
}