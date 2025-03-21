import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_hub/core/utils/widgets/custom_loading_hud.dart';
import 'package:fruit_hub/generated/l10n.dart';

import '../../../../../core/helper/build_error_bar.dart';
import '../../cubits/signup_cubit/signup_cubit.dart';
import 'signup_view_body.dart';

class SignupViewBodyBlocConsumer extends StatelessWidget {
  const SignupViewBodyBlocConsumer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignupCubit, SignupState>(
      listener: (context, state) {
        if (state is SignupSuccess) {
          Navigator.pop(context);
          buildErrorBar(
            context,
            S.of(context).signup,
          ///Todo  S.of(context).signup,
          );
        }
        if (state is SignupFailure) {
          buildErrorBar(context, state.message);
        }
      },
      builder: (context, state) {
        return CustomLoadingHud(
          isLoading: state is SignupLoading ? true : false,
          child: const SignupViewBody(),
        );
      },
    );
  }
}
