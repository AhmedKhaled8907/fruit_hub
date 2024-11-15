import 'package:flutter/material.dart';
import 'package:fruit_hub/core/utils/app_styles/app_colors.dart';
import 'package:fruit_hub/core/utils/app_styles/app_text_styles.dart';
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
        padding:
            isArabic ? EdgeInsets.only(left: 16) : EdgeInsets.only(right: 16),
        decoration: ShapeDecoration(
          color: const Color(0xFFEEEEEE),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 30,
              height: 30,
              decoration: ShapeDecoration(
                color: const Color(0xFF1B5E37),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              child: Center(child: SvgPicture.asset(image)),
            ),
            const SizedBox(width: 8),
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
