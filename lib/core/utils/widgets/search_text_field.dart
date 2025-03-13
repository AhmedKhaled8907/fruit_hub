import 'package:flutter/material.dart';
import 'package:fruit_hub/core/utils/resources/app_colors.dart';
import 'package:fruit_hub/core/utils/resources/app_assets.dart';
import 'package:fruit_hub/core/utils/resources/app_styles.dart';
import 'package:fruit_hub/core/utils/resources/app_values.dart';
import 'package:fruit_hub/generated/l10n.dart';
import 'package:svg_flutter/svg.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(boxShadow: [
        BoxShadow(
          color: Color(0x1A000000),
          blurRadius: 9,
          offset: Offset(0, 2),
          spreadRadius: 0,
        )
      ]),
      child: TextField(
        keyboardType: TextInputType.text,
        style: TextStyles.semiBold16,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.symmetric(
            horizontal: AppPadding.p20,
            vertical: AppPadding.p16,
          ),
          hintText: S.of(context).search,
          hintStyle: TextStyles.regular13.copyWith(
            color: AppColors.lightGreyColor,
          ),
          filled: true,
          fillColor: AppColors.textFormFieldColor,
          prefixIcon: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: AppPadding.p16,
            ),
            child: SvgPicture.asset(AppAssets.imagesSearchIcon),
          ),
          suffixIcon: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: AppPadding.p20,
            ),
            child: SvgPicture.asset(AppAssets.imagesFilter),
          ),
          enabledBorder: outline(),
          focusedBorder: outline(),
          errorBorder: outline(),
          border: outline(),
        ),
      ),
    );
  }

  OutlineInputBorder outline() {
    return const OutlineInputBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(AppSize.s4),
      ),
      borderSide: BorderSide(
        color: Color(0xffE6E9EA),
      ),
    );
  }
}
