import 'package:flutter/material.dart';

import '../../features/auth/presentation/views/login_view.dart';
import '../../features/on_boarding/views/on_boarding_view.dart';
import '../../features/splash/views/splash_view.dart';

Route<dynamic> onGenerateRoutes(RouteSettings settings) {
  switch (settings.name) {
    case SplashView.routeName:
      return MaterialPageRoute(
        builder: (context) => const SplashView(),
      );

    case OnBoardingView.routeName:
      return MaterialPageRoute(
        builder: (context) => const OnBoardingView(),
      );

    case LoginView.routeName:
      return MaterialPageRoute(
        builder: (context) => const LoginView(),
      );  

    default:
      return MaterialPageRoute(
        builder: (context) => const Scaffold(
          body: Center(
            child: Text('Page not found'),
          ),
        ),
      );
  }
}
