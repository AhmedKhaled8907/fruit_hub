import 'package:flutter/material.dart';
import 'package:fruit_hub/core/utils/resources/app_assets.dart';
import 'package:fruit_hub/core/utils/resources/app_values.dart';
import 'package:svg_flutter/svg_flutter.dart';

class NotificationWidget extends StatelessWidget {
  const NotificationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: AppMargin.m16,
      ),
      padding: EdgeInsets.all(
        AppPadding.p16,
      ),
      decoration: ShapeDecoration(
        color: Color(0xffEEF8ED),
        shape: OvalBorder(),
      ),
      child: SvgPicture.asset(
        AppAssets.imagesNotification,
      ),
    );
  }
}
