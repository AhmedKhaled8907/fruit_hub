import 'package:flutter/material.dart';

import '../../../../core/utils/widgets/custom_app_bar.dart';
import 'widgets/login_view_body.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});
  static const routeName = '/login';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(
        context,
        title: 'تسجيل الدخول',
        showLeading: false,
      ),
      body: const LoginViewBody(),
    );
  }
}
