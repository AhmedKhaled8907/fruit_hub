import 'package:flutter/material.dart';
import 'package:fruit_hub/core/utils/resources/app_assets.dart';
import 'package:fruit_hub/core/utils/resources/app_colors.dart';
import 'package:fruit_hub/core/utils/resources/app_styles.dart';
import 'package:fruit_hub/core/utils/resources/app_values.dart';
import 'package:fruit_hub/core/utils/widgets/notification_widget.dart';
import 'package:svg_flutter/svg.dart';

class AppBarWithNotifications extends StatelessWidget
    implements PreferredSizeWidget {
  final String title;

  const AppBarWithNotifications({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: AppColors.white,
      centerTitle: true,
      title: Text(
        title,
        style: TextStyles.bold19,
      ),
      leading: Padding(
        padding: const EdgeInsets.all(AppPadding.p6),
        child: InkWell(
          onTap: () => Navigator.pop(context),
          borderRadius: BorderRadius.circular(AppSize.s50),
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: AppColors.backArrowColor,
              ),
              shape: BoxShape.circle,
            ),
            child: Center(
              child: SvgPicture.asset(
                AppAssets.imagesBackArrow,
                height: AppSize.s24,
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
      ),
      actions: const [
        NotificationWidget(),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
