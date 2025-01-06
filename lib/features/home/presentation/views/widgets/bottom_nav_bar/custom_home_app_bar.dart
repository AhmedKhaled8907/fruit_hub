import 'package:flutter/material.dart';
import 'package:fruit_hub/core/helper/get_user.dart';
import 'package:fruit_hub/core/utils/resources/app_colors.dart';
import 'package:fruit_hub/core/utils/resources/app_assets.dart';
import 'package:fruit_hub/core/utils/resources/app_styles.dart';
import 'package:fruit_hub/generated/l10n.dart';
import 'package:svg_flutter/svg.dart';

class CustomHomeAppBar extends StatelessWidget {
  const CustomHomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: Image.asset(AppAssets.imagesProfileImage),
      title: Text(
        S.of(context).goodMorning,
        style: TextStyles.regular16.copyWith(
          color: AppColors.lightGreyColor,
        ),
      ),
      subtitle: Text(
        getUser().name,
        style: TextStyles.bold16,
      ),
      trailing: Container(
        padding: EdgeInsets.all(12),
        decoration: ShapeDecoration(
          color: Color(0xffEEF8ED),
          shape: OvalBorder(),
        ),
        child: SvgPicture.asset(
          AppAssets.imagesNotification,
        ),
      ),
    );
  }
}
