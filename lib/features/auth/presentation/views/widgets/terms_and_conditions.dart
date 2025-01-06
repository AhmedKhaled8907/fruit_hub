import 'package:flutter/material.dart';
import 'package:fruit_hub/core/utils/resources/app_values.dart';
import 'package:fruit_hub/features/auth/presentation/views/widgets/custom_check_box.dart';

import '../../../../../core/utils/resources/app_colors.dart';
import '../../../../../core/utils/resources/app_styles.dart';
import '../../../../../generated/l10n.dart';

class TermsAndConditionsWidget extends StatefulWidget {
  const TermsAndConditionsWidget({
    super.key,
    required this.onChanged,
  });

  final ValueChanged<bool> onChanged;

  @override
  State<TermsAndConditionsWidget> createState() =>
      _TermsAndConditionsWidgetState();
}

class _TermsAndConditionsWidgetState extends State<TermsAndConditionsWidget> {
  bool isTermsAccepted = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      spacing: AppSize.s16,
      children: [
        CustomCheckBox(
          isChecked: isTermsAccepted,
          onChecked: (value) {
            isTermsAccepted = value;
            widget.onChanged(value);
            setState(() {});
          },
        ),
        Expanded(
          child: Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: S.of(context).byCreatingAnAccountYouAgreeToOur,
                  style: TextStyles.semiBold13.copyWith(
                    color: const Color(0xFF949D9E),
                  ),
                ),
                TextSpan(
                  text: S.of(context).termsAndConditions,
                  style: TextStyles.semiBold13.copyWith(
                    color: AppColors.lightPrimaryColor,
                  ),
                ),
              ],
            ),
            textAlign: TextAlign.start,
          ),
        ),
      ],
    );
  }
}
