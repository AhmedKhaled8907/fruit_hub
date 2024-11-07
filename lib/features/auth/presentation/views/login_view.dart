import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_hub/core/services/get_it_service.dart';
import 'package:fruit_hub/features/auth/presentation/cubits/login_cubit/login_cubit.dart';

import '../../../../core/utils/widgets/custom_app_bar.dart';
import '../../domain/repos/auth_repo.dart';
import 'widgets/login_view_body_bloc_consumer.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});
  static const routeName = '/login';

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginCubit(
        getIt<AuthRepo>(),
      ),
      child: Scaffold(
        appBar: customAppBar(
          context,
          title: 'تسجيل الدخول',
          showLeading: false,
        ),
        body: const LoginViewBodyBlocConsumer(),
      ),
    );
  }
}
