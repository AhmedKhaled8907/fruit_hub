import 'package:flutter/material.dart';
import 'package:fruit_hub/core/utils/app_styles/app_images.dart';
import 'package:svg_flutter/svg_flutter.dart';

class NotificationWidget extends StatelessWidget {
  const NotificationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      padding: EdgeInsets.all(12),
      decoration: ShapeDecoration(
        color: Color(0xffEEF8ED),
        shape: OvalBorder(),
      ),
      child: SvgPicture.asset(
        Assets.imagesNotification,
      ),
    );
  }
}
