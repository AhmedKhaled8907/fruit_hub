import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_hub/core/utils/widgets/custom_button.dart';
import 'package:fruit_hub/core/utils/widgets/custom_text_form_field.dart';
import 'package:fruit_hub/features/auth/presentation/cubits/cubit/signup_cubit.dart';
import 'package:fruit_hub/features/auth/presentation/views/widgets/have_an_account.dart';
import 'package:fruit_hub/features/auth/presentation/views/widgets/terms_and_conditions.dart';

import '../../../../../core/helper/constants.dart';

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
            hintText: 'الاسم الكامل',
            keyboardType: TextInputType.text,
          ),
          const SizedBox(height: 16),
          CustomTextFormField(
            onSaved: (value) {
              email = value!;
            },
            hintText: 'البريد الإلكتروني',
            keyboardType: TextInputType.emailAddress,
          ),
          const SizedBox(height: 16),
          CustomTextFormField(
            onSaved: (value) {
              password = value!;
            },
            hintText: 'كلمة المرور',
            keyboardType: TextInputType.visiblePassword,
            suffixIcon: const Icon(
              Icons.visibility,
              color: Color(0xffC9CECF),
            ),
          ),
          const SizedBox(height: 16),
          const TermsAndConditionsWidget(),
          const SizedBox(height: 24),
          CustomButton(
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                _formKey.currentState!.save();
                context.read<SignupCubit>().createUserWithEmailAndPassword(
                      email: email,
                      password: password,
                      name: name,
                    );
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
