import 'package:flutter/material.dart';

import '../../../generated/l10n.dart';
import '../resources/app_styles.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
          child: Divider(
            color: Color(0xffDDDFDF),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            S.of(context).or,
            style: TextStyles.semiBold16,
          ),
        ),
        const Expanded(
          child: Divider(
            color: Color(0xffDDDFDF),
          ),
        ),
      ],
    );
  }
}
