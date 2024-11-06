import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_hub/core/services/get_it_service.dart';
import 'package:fruit_hub/core/utils/widgets/custom_app_bar.dart';
import 'package:fruit_hub/features/auth/presentation/cubits/cubit/signup_cubit.dart';

import '../../domain/repos/auth_repo.dart';
import 'widgets/signup_view_body_bloc_consumer.dart';

class SignupView extends StatelessWidget {
  const SignupView({super.key});
  static const routeName = '/signup';

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SignupCubit(
        getIt<AuthRepo>(),
      ),
      child: Scaffold(
        appBar: customAppBar(
          context,
          title: 'حساب جديد',
        ),
        body: const SignupViewBodyBlocConsumer(),
      ),
    );
  }
}


