import 'package:flutter/material.dart';
import 'package:fruit_hub/core/utils/app_styles/app_text_styles.dart';

AppBar customAppBar(BuildContext context, {required String title}) {
  return AppBar(
    backgroundColor: Colors.white,
    elevation: 0,
    toolbarHeight: 80,
    title: Padding(
      padding: const EdgeInsets.only(top: 16),
      child: Text(
        title,
        style: TextStyles.bold19,
      ),
    ),
    centerTitle: true,
    leading: Padding(
      padding: const EdgeInsets.only(top: 16),
      child: IconButton(
        icon: const Icon(Icons.arrow_back_ios),
        onPressed: () {
          Navigator.of(context).pop();
        },
      ),
    ),
  );
}
