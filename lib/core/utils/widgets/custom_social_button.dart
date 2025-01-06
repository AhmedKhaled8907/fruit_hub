import 'package:flutter/material.dart';
import 'package:fruit_hub/core/utils/resources/app_colors.dart';
import 'package:fruit_hub/core/utils/resources/app_values.dart';
import 'package:svg_flutter/svg.dart';

import '../resources/app_styles.dart';

class CustomSocialButton extends StatelessWidget {
  const CustomSocialButton({
    super.key,
    required this.onPressed,
    required this.title,
    required this.image,
  });
  final VoidCallback onPressed;
  final String title;
  final String image;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: AppSize.s54,
      child: TextButton(
        style: TextButton.styleFrom(
          padding: const EdgeInsets.symmetric(
            horizontal: AppPadding.p16,
          ),
          shape: RoundedRectangleBorder(
            side: const BorderSide(
              color: Color(0xffDDDFDF),
            ),
            borderRadius: BorderRadius.circular(AppSize.s16),
          ),
          backgroundColor: AppColors.white,
        ),
        onPressed: onPressed,
        child: ListTile(
          visualDensity: const VisualDensity(
            vertical: VisualDensity.minimumDensity,
          ),
          leading: SvgPicture.asset(image),
          title: Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyles.semiBold16.copyWith(
              color: AppColors.black,
            ),
          ),
        ),
      ),
    );
  }
}
