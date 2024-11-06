import 'package:flutter/material.dart';

import '../../helper/my_validators.dart';
import 'custom_text_form_field.dart';

class PasswordField extends StatefulWidget {
  const PasswordField({
    super.key,
    required this.onSaved,
  });

  final void Function(String?)? onSaved;

  @override
  State<PasswordField> createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  bool obscureText = true;

  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
      validator: (value) {
        return AppValidators.passwordValidator(value);
      },
      obscureText: obscureText,
      onSaved: widget.onSaved,
      hintText: 'كلمة المرور',
      keyboardType: TextInputType.visiblePassword,
      suffixIcon: GestureDetector(
        onTap: () {
          setState(() {
            obscureText = !obscureText;
          });
        },
        child: Icon(
          obscureText ? Icons.visibility : Icons.visibility_off,
          color: const Color(0xffC9CECF),
        ),
      ),
    );
  }
}
