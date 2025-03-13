import 'package:flutter/material.dart';
import 'package:fruit_hub/core/utils/resources/app_colors.dart';
import 'package:fruit_hub/core/utils/resources/app_styles.dart';
import 'package:fruit_hub/core/utils/resources/app_values.dart';
import 'package:svg_flutter/svg_flutter.dart';

class ActiveItem extends StatelessWidget {
  const ActiveItem({
    super.key,
    required this.name,
    required this.image,
  });

  final String name;
  final String image;
  @override
  Widget build(BuildContext context) {
    var isArabic = Localizations.localeOf(context).languageCode == 'ar';

    return Center(
      child: Container(
        padding: isArabic
            ? const EdgeInsets.only(
                left: AppPadding.p16,
              )
            : const EdgeInsets.only(
                right: AppPadding.p16,
              ),
        decoration: ShapeDecoration(
          color: const Color(0xFFEEEEEE),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppSize.s30),
          ),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          spacing: AppSize.s8,
          children: [
            Container(
              width: AppSize.s30,
              height: AppSize.s30,
              decoration: ShapeDecoration(
                color: const Color(0xFF1B5E37),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                    AppSize.s30,
                  ),
                ),
              ),
              child: Center(
                child: SvgPicture.asset(image),
              ),
            ),
            Text(
              name,
              style: TextStyles.bold13.copyWith(
                color: AppColors.primaryColor,
              ),
            )
          ],
        ),
      ),
    );
  }
}
