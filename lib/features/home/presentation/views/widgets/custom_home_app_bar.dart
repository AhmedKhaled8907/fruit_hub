import 'package:flutter/material.dart';
import 'package:fruit_hub/core/utils/app_styles/app_colors.dart';
import 'package:fruit_hub/core/utils/app_styles/app_images.dart';
import 'package:fruit_hub/core/utils/app_styles/app_text_styles.dart';
import 'package:svg_flutter/svg.dart';

class CustomHomeAppBar extends StatelessWidget {
  const CustomHomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: Image.asset(Assets.imagesProfileImage),
      title: Text(
        'صباح الخير !..',
        style: TextStyles.regular16.copyWith(
          color: AppColors.lightGreyColor,
        ),
      ),
      subtitle: Text(
        'أحمد مصطفي',
        style: TextStyles.bold16,
      ),
      trailing: Container(
        padding: EdgeInsets.all(12),
        decoration: ShapeDecoration(
          color: Color(0xffEEF8ED),
          shape: OvalBorder(),
        ),
        child: SvgPicture.asset(
          Assets.imagesNotification,
        ),
      ),
    );
  }
}
