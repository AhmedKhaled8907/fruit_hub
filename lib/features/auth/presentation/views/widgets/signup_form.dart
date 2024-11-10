import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_hub/core/helper/build_error_bar.dart';
import 'package:fruit_hub/core/helper/my_validators.dart';

import '../../../../../core/utils/widgets/custom_button.dart';
import '../../../../../core/utils/widgets/custom_text_form_field.dart';
import '../../../../../core/utils/widgets/password_field.dart';
import '../../cubits/signup_cubit/signup_cubit.dart';
import 'terms_and_conditions.dart';

class SignupForm extends StatefulWidget {
  const SignupForm({
    super.key,
  });

  @override
  State<SignupForm> createState() => _SignupFormState();
}

class _SignupFormState extends State<SignupForm> {
  final _formKey = GlobalKey<FormState>();
  var autovalidateMode = AutovalidateMode.disabled;
  late String email, password, name;
  bool isTermsAccepted = false;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          CustomTextFormField(
            onSaved: (value) {
              name = value!;
            },
            validator: (value) {
              return AppValidators.displayNameValidator(value);
            },
            hintText: 'الاسم الكامل',
            keyboardType: TextInputType.text,
          ),
          const SizedBox(height: 16),
          CustomTextFormField(
            onSaved: (value) {
              email = value!;
            },
            validator: (value) {
              return AppValidators.emailValidator(value);
            },
            hintText: 'البريد الإلكتروني',
            keyboardType: TextInputType.emailAddress,
          ),
          const SizedBox(height: 16),
          PasswordField(
            onSaved: (value) {
              password = value!;
            },
          ),
          const SizedBox(height: 16),
          TermsAndConditionsWidget(
            onChanged: (value) {
              isTermsAccepted = value;
            },
          ),
          const SizedBox(height: 24),
          CustomButton(
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                _formKey.currentState!.save();
                if (isTermsAccepted) {
                  context.read<SignupCubit>().createUserWithEmailAndPassword(
                        email: email,
                        password: password,
                        name: name,
                      );
                } else {
                  buildErrorBar(
                    context,
                    'يجب الموافقة علي الشروط و الأحكام أولا',
                  );
                }
              } else {
                setState(() {
                  autovalidateMode = AutovalidateMode.always;
                });
              }
            },
            title: 'إنشاء حساب جديد',
          ),
        ],
      ),
    );
  }
}