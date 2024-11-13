// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  // skipped getter for the '//onBoardingView' key

  /// `Skip`
  String get skip {
    return Intl.message(
      'Skip',
      name: 'skip',
      desc: '',
      args: [],
    );
  }

  /// `Welcome to FruitHUB`
  String get onBoardingTitle1 {
    return Intl.message(
      'Welcome to FruitHUB',
      name: 'onBoardingTitle1',
      desc: '',
      args: [],
    );
  }

  /// `Hub`
  String get hub {
    return Intl.message(
      'Hub',
      name: 'hub',
      desc: '',
      args: [],
    );
  }

  /// `Fruit`
  String get Fruit {
    return Intl.message(
      'Fruit',
      name: 'Fruit',
      desc: '',
      args: [],
    );
  }

  /// `Discover a unique shopping experience with FruitHUB. Explore our wide selection of premium fresh fruits and get the best deals and high quality.`
  String get onBoardingSubtitle1 {
    return Intl.message(
      'Discover a unique shopping experience with FruitHUB. Explore our wide selection of premium fresh fruits and get the best deals and high quality.',
      name: 'onBoardingSubtitle1',
      desc: '',
      args: [],
    );
  }

  /// `Search and Shop`
  String get onBoardingTitle2 {
    return Intl.message(
      'Search and Shop',
      name: 'onBoardingTitle2',
      desc: '',
      args: [],
    );
  }

  /// `We offer you the finest handpicked fruits. Check details, images, and ratings to choose the perfect fruit.`
  String get onBoardingSubtitle2 {
    return Intl.message(
      'We offer you the finest handpicked fruits. Check details, images, and ratings to choose the perfect fruit.',
      name: 'onBoardingSubtitle2',
      desc: '',
      args: [],
    );
  }

  /// `Start Now`
  String get onBoardingStartNow {
    return Intl.message(
      'Start Now',
      name: 'onBoardingStartNow',
      desc: '',
      args: [],
    );
  }

  // skipped getter for the '//signinView' key

  /// `Sign In`
  String get signin {
    return Intl.message(
      'Sign In',
      name: 'signin',
      desc: '',
      args: [],
    );
  }

  /// `Email`
  String get emailSignin {
    return Intl.message(
      'Email',
      name: 'emailSignin',
      desc: '',
      args: [],
    );
  }

  /// `Confirm Password`
  String get confirmPassword {
    return Intl.message(
      'Confirm Password',
      name: 'confirmPassword',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get passwordSignIn {
    return Intl.message(
      'Password',
      name: 'passwordSignIn',
      desc: '',
      args: [],
    );
  }

  /// `Forgot Password?`
  String get forgotPassword {
    return Intl.message(
      'Forgot Password?',
      name: 'forgotPassword',
      desc: '',
      args: [],
    );
  }

  /// `Don’t have an account?`
  String get dontHaveAccount {
    return Intl.message(
      'Don’t have an account?',
      name: 'dontHaveAccount',
      desc: '',
      args: [],
    );
  }

  /// `Create Account`
  String get createAccount {
    return Intl.message(
      'Create Account',
      name: 'createAccount',
      desc: '',
      args: [],
    );
  }

  /// `Sign in with Google`
  String get signinWithGoogle {
    return Intl.message(
      'Sign in with Google',
      name: 'signinWithGoogle',
      desc: '',
      args: [],
    );
  }

  /// `Sign in with Facebook`
  String get signinWithFacebook {
    return Intl.message(
      'Sign in with Facebook',
      name: 'signinWithFacebook',
      desc: '',
      args: [],
    );
  }

  /// `Sign in with Apple`
  String get signinWithApple {
    return Intl.message(
      'Sign in with Apple',
      name: 'signinWithApple',
      desc: '',
      args: [],
    );
  }

  /// `or`
  String get or {
    return Intl.message(
      'or',
      name: 'or',
      desc: '',
      args: [],
    );
  }

  // skipped getter for the '//forgotPasswordView' key

  /// `Forgot Password`
  String get resetPasswordAppBar {
    return Intl.message(
      'Forgot Password',
      name: 'resetPasswordAppBar',
      desc: '',
      args: [],
    );
  }

  /// `Forgot Password`
  String get resetPassword {
    return Intl.message(
      'Forgot Password',
      name: 'resetPassword',
      desc: '',
      args: [],
    );
  }

  /// `Don’t worry, just enter your phone number, and we’ll send a verification code.`
  String get dontWorry {
    return Intl.message(
      'Don’t worry, just enter your phone number, and we’ll send a verification code.',
      name: 'dontWorry',
      desc: '',
      args: [],
    );
  }

  // skipped getter for the '//signupView' key

  /// `Sign Up`
  String get signup {
    return Intl.message(
      'Sign Up',
      name: 'signup',
      desc: '',
      args: [],
    );
  }

  /// `Email`
  String get emailSignup {
    return Intl.message(
      'Email',
      name: 'emailSignup',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get passwordSignup {
    return Intl.message(
      'Password',
      name: 'passwordSignup',
      desc: '',
      args: [],
    );
  }

  /// `Full Name`
  String get fullName {
    return Intl.message(
      'Full Name',
      name: 'fullName',
      desc: '',
      args: [],
    );
  }

  /// `By creating an account, you agree to`
  String get byCreatingAnAccountYouAgreeToOur {
    return Intl.message(
      'By creating an account, you agree to',
      name: 'byCreatingAnAccountYouAgreeToOur',
      desc: '',
      args: [],
    );
  }

  /// `our Terms and Conditions`
  String get termsAndConditions {
    return Intl.message(
      'our Terms and Conditions',
      name: 'termsAndConditions',
      desc: '',
      args: [],
    );
  }

  /// `Create New Account`
  String get createNewAccountSignup {
    return Intl.message(
      'Create New Account',
      name: 'createNewAccountSignup',
      desc: '',
      args: [],
    );
  }

  /// `Already have an account?`
  String get haveAnAccount {
    return Intl.message(
      'Already have an account?',
      name: 'haveAnAccount',
      desc: '',
      args: [],
    );
  }

  // skipped getter for the '//homeView' key

  /// `Good Morning`
  String get goodMorning {
    return Intl.message(
      'Good Morning',
      name: 'goodMorning',
      desc: '',
      args: [],
    );
  }

  /// `Ahmed Khaled`
  String get username {
    return Intl.message(
      'Ahmed Khaled',
      name: 'username',
      desc: '',
      args: [],
    );
  }

  /// `Search`
  String get search {
    return Intl.message(
      'Search',
      name: 'search',
      desc: '',
      args: [],
    );
  }

  /// `Eid Offers`
  String get eidOffers {
    return Intl.message(
      'Eid Offers',
      name: 'eidOffers',
      desc: '',
      args: [],
    );
  }

  /// `25% Discount`
  String get discount {
    return Intl.message(
      '25% Discount',
      name: 'discount',
      desc: '',
      args: [],
    );
  }

  /// `Shop Now`
  String get shoppingNow {
    return Intl.message(
      'Shop Now',
      name: 'shoppingNow',
      desc: '',
      args: [],
    );
  }

  /// `More`
  String get more {
    return Intl.message(
      'More',
      name: 'more',
      desc: '',
      args: [],
    );
  }

  /// `Best Selling`
  String get bestSelling {
    return Intl.message(
      'Best Selling',
      name: 'bestSelling',
      desc: '',
      args: [],
    );
  }

  /// `EGP`
  String get pound {
    return Intl.message(
      'EGP',
      name: 'pound',
      desc: '',
      args: [],
    );
  }

  /// `kg`
  String get kilo {
    return Intl.message(
      'kg',
      name: 'kilo',
      desc: '',
      args: [],
    );
  }

  /// `Watermelon`
  String get watermelon {
    return Intl.message(
      'Watermelon',
      name: 'watermelon',
      desc: '',
      args: [],
    );
  }

  /// `Apple`
  String get apple {
    return Intl.message(
      'Apple',
      name: 'apple',
      desc: '',
      args: [],
    );
  }

  /// `Strawberry`
  String get strawberry {
    return Intl.message(
      'Strawberry',
      name: 'strawberry',
      desc: '',
      args: [],
    );
  }

  // skipped getter for the '//bottomNavBar' key

  /// `Home`
  String get home {
    return Intl.message(
      'Home',
      name: 'home',
      desc: '',
      args: [],
    );
  }

  /// `Products`
  String get products {
    return Intl.message(
      'Products',
      name: 'products',
      desc: '',
      args: [],
    );
  }

  /// `Cart`
  String get cart {
    return Intl.message(
      'Cart',
      name: 'cart',
      desc: '',
      args: [],
    );
  }

  /// `Profile`
  String get profile {
    return Intl.message(
      'Profile',
      name: 'profile',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ar'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
