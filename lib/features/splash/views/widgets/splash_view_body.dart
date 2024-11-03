import 'package:flutter/material.dart';
import 'package:fruit_hub/core/utils/app_images.dart';
import 'package:fruit_hub/features/auth/presentation/views/login_view.dart';
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
    executeNavigation();
    super.initState();
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

  Future<void> executeNavigation() {
    bool isBoardingViewSeen = Prefs.getBool(kIsBoardingViewSeen);
    return Future.delayed(const Duration(seconds: 3), () {
      if (isBoardingViewSeen && mounted) {
        Navigator.pushReplacementNamed(context, LoginView.routeName);
      } else if (!isBoardingViewSeen && mounted) {
        Navigator.pushReplacementNamed(context, OnBoardingView.routeName);
      }
    });
  }
}
