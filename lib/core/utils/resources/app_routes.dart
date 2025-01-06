import 'package:fruit_hub/features/best_selling/presentation/views/best_selling_view.dart';
import 'package:fruit_hub/features/home/presentation/views/widgets/home_view.dart';
import 'package:fruit_hub/features/on_boarding/views/on_boarding_view.dart';
import 'package:fruit_hub/features/splash/views/splash_view.dart';
import 'package:go_router/go_router.dart';

import '../../../features/auth/presentation/views/forgot_password_view.dart';
import '../../../features/auth/presentation/views/signin_view.dart';
import '../../../features/auth/presentation/views/signup_view.dart';
import '../../../features/home/presentation/views/main_view.dart';

abstract class AppRoutes {
  // Routes
  static const kInitialRoute = '/';
  static const kOnBoardingRoute = '/onBoarding';
  static const kSignInRoute = '/signIn';
  static const kSignUpRoute = '/signUp';
  static const kForgotPasswordRoute = '/forgotPassword';
  static const kMainRoute = '/main';
  static const kHomeRoute = '/home';
  static const kBestSellingRoute = '/bestSelling';

  static final routes = GoRouter(
    routes: [
      GoRoute(
        path: kInitialRoute,
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: kOnBoardingRoute,
        builder: (context, state) => const OnBoardingView(),
      ),
      GoRoute(
        path: kHomeRoute,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: kSignInRoute,
        builder: (context, state) => const SigninView(),
      ),
      GoRoute(
        path: kSignUpRoute,
        builder: (context, state) => const SignupView(),
      ),
      GoRoute(
        path: kForgotPasswordRoute,
        builder: (context, state) => const ForgotPasswordView(),
      ),
      GoRoute(
        path: kMainRoute,
        builder: (context, state) => const MainView(),
      ),
      GoRoute(
        path: kBestSellingRoute,
        builder: (context, state) => const BestSellingView(),
      ),
    ],
  );
}
