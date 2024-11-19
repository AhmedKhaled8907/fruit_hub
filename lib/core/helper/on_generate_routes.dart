import 'package:flutter/material.dart';
import 'package:fruit_hub/features/best_selling/presentation/views/best_selling_view.dart';

import '../../features/auth/presentation/views/signin_view.dart';
import '../../features/auth/presentation/views/signup_view.dart';
import '../../features/auth/presentation/views/forgot_password_view.dart';
import '../../features/home/presentation/views/main_view.dart';
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

    case SigninView.routeName:
      return MaterialPageRoute(
        builder: (context) => const SigninView(),
      );

    case SignupView.routeName:
      return MaterialPageRoute(
        builder: (context) => const SignupView(),
      );

    case ForgotPasswordView.routeName:
      return MaterialPageRoute(
        builder: (context) => const ForgotPasswordView(),
      );

    case MainView.routeName:
      return MaterialPageRoute(
        builder: (context) => const MainView(),
      );

    case BestSellingView.routeName:
      return MaterialPageRoute(
        builder: (context) => const BestSellingView(),
      );

    default:
      return MaterialPageRoute(
        builder: (context) => const Scaffold(),
      );
  }
}
