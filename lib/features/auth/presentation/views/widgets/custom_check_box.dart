import 'package:flutter/material.dart';
import 'package:fruit_hub/core/utils/resources/app_assets.dart';
import 'package:fruit_hub/core/utils/resources/app_values.dart';
import 'package:svg_flutter/svg.dart';

import '../../../../../core/utils/resources/app_colors.dart';

class CustomCheckBox extends StatelessWidget {
  const CustomCheckBox({
    super.key,
    required this.isChecked,
    required this.onChecked,
  });

  final bool isChecked;
  final ValueChanged<bool> onChecked;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onChecked(!isChecked);
      },
      child: AnimatedContainer(
        width: AppSize.s24,
        height: AppSize.s24,
        duration: const Duration(milliseconds: 100),
        decoration: ShapeDecoration(
          color: isChecked ? AppColors.primaryColor : Colors.white,
          shape: RoundedRectangleBorder(
            side: BorderSide(
              width: AppSize.s1_5,
              color: isChecked ? Colors.transparent : const Color(0xFFDCDEDE),
            ),
            borderRadius: BorderRadius.circular(
              AppSize.s8,
            ),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(AppPadding.p2),
          child: isChecked
              ? SvgPicture.asset(
                  AppAssets.imagesCheck,
                )
              : const SizedBox(),
        ),
      ),
    );
  }
}
