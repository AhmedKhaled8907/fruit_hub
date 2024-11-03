import 'package:flutter/material.dart';
import 'package:fruit_hub/core/utils/app_styles/app_colors.dart';
import 'package:fruit_hub/core/utils/app_styles/app_text_styles.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.hintText,required this.keyboardType, this.suffixIcon,
  });

  final String hintText;
  final TextInputType? keyboardType;
  final Widget? suffixIcon;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: keyboardType,
      style: TextStyles.semiBold16,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyles.bold13.copyWith(
          color: const Color(0xff949D9E),
        ),
        filled: true,
        fillColor: AppColors.textFormFieldColor,
        suffixIcon: suffixIcon,
        enabledBorder: outline(),
        focusedBorder: outline(),
        errorBorder: outline(),
        border: outline(),
      ),
    );
  }

  OutlineInputBorder outline() {
    return const OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(4)),
      borderSide: BorderSide(
        color: Color(0xffE6E9EA),
      ),
    );
  }
}
