import 'package:flutter/material.dart';
import 'package:fruit_hub/core/utils/app_styles/app_images.dart';
import 'package:fruit_hub/features/auth/presentation/views/signin_view.dart';
import 'package:svg_flutter/svg.dart';

import '../../../../core/helper/constants.dart';
import '../../../../core/services/shared_preferences_singleton.dart';
import '../../../on_boarding/views/on_boarding_view.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  @override
  void initState() {
    super.initState();
    executeNavigation();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SvgPicture.asset(Assets.imagesPlant),
          ],
        ),
        SvgPicture.asset(Assets.imagesLogo),
        SvgPicture.asset(
          Assets.imagesSplashBottom,
          fit: BoxFit.fill,
        ),
      ],
    );
  }

  Future<void> executeNavigation() async {
    bool isBoardingViewSeen = Prefs.getBool(kIsBoardingViewSeen) ?? false;

    await Future.delayed(const Duration(seconds: 3), () {
      if (mounted) {
        Navigator.pushNamedAndRemoveUntil(
          context,
          isBoardingViewSeen ? SigninView.routeName : OnBoardingView.routeName,
          (route) => false,
        );
      }
    });
  }
}
