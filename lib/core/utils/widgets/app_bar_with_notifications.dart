import 'package:flutter/material.dart';
import 'package:fruit_hub/core/utils/app_styles/app_text_styles.dart';
import 'package:fruit_hub/core/utils/widgets/notification_widget.dart';

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
      backgroundColor: Colors.white,
      centerTitle: true,
      title: Text(
        title,
        style: TextStyles.bold19,
      ),
      leading: Padding(
        padding: const EdgeInsets.all(12.0),
        child: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(
            Icons.arrow_back_ios,
          ),
        ),
      ),
      actions: [
        NotificationWidget(),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
