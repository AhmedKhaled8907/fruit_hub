import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_hub/core/helper/app_validators.dart';
import 'package:fruit_hub/core/utils/resources/app_values.dart';
import 'package:fruit_hub/features/auth/presentation/cubits/signin_cubit/signin_cubit.dart';
import 'package:fruit_hub/generated/l10n.dart';

import '../../../../../core/utils/widgets/custom_button.dart';
import '../../../../../core/utils/widgets/custom_text_form_field.dart';
import '../../../../../core/utils/widgets/password_field.dart';
import 'forgot_password.dart';

class SigninForm extends StatefulWidget {
  const SigninForm({
    super.key,
  });

  @override
  State<SigninForm> createState() => _SigninFormState();
}

class _SigninFormState extends State<SigninForm> {
  final _formKey = GlobalKey<FormState>();
  var autovalidateMode = AutovalidateMode.disabled;
  late String email, password;
  bool isTermsAccepted = false;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        spacing: AppSize.s16,
        children: [
          CustomTextFormField(
            onSaved: (value) {
              email = value!;
            },
            validator: (value) {
              return AppValidators.emailValidator(value);
            },
            hintText: S.of(context).emailSignin,
            keyboardType: TextInputType.emailAddress,
          ),
          PasswordField(
            onSaved: (value) {
              password = value!;
            },
            validator: (value) {
              return null;
            },
          ),
          const ForgotPasswordWidget(),
          const SizedBox(height: AppSize.s20),
          CustomButton(
            title: S.of(context).signin,
            onPressed: () {
              FocusScope.of(context).unfocus();
              if (_formKey.currentState!.validate()) {
                _formKey.currentState!.save();
                context.read<SigninCubit>().loginUserWithEmailAndPassword(
                      email: email,
                      password: password,
                    );
              } else {
                setState(() {
                  autovalidateMode = AutovalidateMode.always;
                });
              }
            },
          ),
        ],
      ),
    );
  }
}
