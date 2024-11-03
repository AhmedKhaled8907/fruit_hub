import 'package:flutter/material.dart';
import 'package:fruit_hub/core/utils/app_styles/app_text_styles.dart';

AppBar customAppBar(context, {required String title}) {
  return AppBar(
    backgroundColor: Colors.white,
    elevation: 0,
    title: Text(
      title,
      style: TextStyles.bold19,
    ),
    centerTitle: true,
    leading: IconButton(
      icon: const Icon(Icons.arrow_back_ios),
      onPressed: () {
        Navigator.of(context).pop();
      },
    ),
  );
}
