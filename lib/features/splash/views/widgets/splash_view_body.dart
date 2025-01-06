import 'package:flutter/material.dart';
import 'package:fruit_hub/core/services/firebase_auth_service.dart';
import 'package:fruit_hub/core/utils/resources/app_assets.dart';
import 'package:fruit_hub/core/utils/resources/app_routes.dart';
import 'package:go_router/go_router.dart';
import 'package:svg_flutter/svg.dart';

import '../../../../core/helper/constants.dart';
import '../../../../core/services/shared_preferences_singleton.dart';

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
    var isEnglish = Localizations.localeOf(context).languageCode == 'en';

    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(
          mainAxisAlignment:
              isEnglish ? MainAxisAlignment.start : MainAxisAlignment.end,
          children: [
            SvgPicture.asset(
              AppAssets.imagesPlant,
            ),
          ],
        ),
        SvgPicture.asset(AppAssets.imagesLogo),
        SvgPicture.asset(
          AppAssets.imagesSplashBottom,
          fit: BoxFit.fill,
        ),
      ],
    );
  }

  void executeNavigation() {
    bool isBoardingViewSeen = Prefs.getBool(kIsBoardingViewSeen) ?? false;

    Future.delayed(const Duration(seconds: 3), () {
      if (isBoardingViewSeen && mounted) {
        var isLoggedIn = FirebaseAuthService().isSignedIn();

        if (isLoggedIn) {
          GoRouter.of(context).pushReplacement(
            AppRoutes.kMainRoute,
          );
        } else {
          GoRouter.of(context).pushReplacement(
            AppRoutes.kSignInRoute,
          );
        }
      } else if (mounted) {
        GoRouter.of(context).pushReplacement(
          AppRoutes.kOnBoardingRoute,
        );
      }
    });
  }
}
