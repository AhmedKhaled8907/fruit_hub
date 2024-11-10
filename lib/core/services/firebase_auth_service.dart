import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:fruit_hub/core/errors/custom_exceptions.dart';
import 'package:google_sign_in/google_sign_in.dart';

class FirebaseAuthService {
  var auth = FirebaseAuth.instance;
  Future<User> createUserWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    try {
      final credential = await auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      return credential.user!;
    } on FirebaseAuthException catch (e) {
      log(
        'Exception in FirebaseAuthService.createUserWithEmailAndPassword: ${e.toString()} and code is ${e.code}',
      );
      if (e.code == 'weak-password') {
        throw CustomExceptions(
          message: "كلمة المرور ضعيفة جداً.",
        );
      } else if (e.code == 'email-already-in-use') {
        throw CustomExceptions(
          message: "البريد الإلكتروني مستخدم مسبقاً.",
        );
      } else if (e.code == 'network-request-failed') {
        throw CustomExceptions(
          message: "تأكد من اتصالك بالإنترنت.",
        );
      } else {
        throw CustomExceptions(
          message: 'لقد حدث خطأ ما. حاول مرة أخرى',
        );
      }
    } catch (e) {
      log(
        'Exception in FirebaseAuthService.createUserWithEmailAndPassword: ${e.toString()}',
      );
      throw CustomExceptions(
        message: 'لقد حدث خطأ ما. حاول مرة أخرى',
      );
    }
  }

  Future<User> signinUserWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    try {
      final credential = await auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return credential.user!;
    } on FirebaseAuthException catch (e) {
      log(
        'Exception in FirebaseAuthService.loginUserWithEmailAndPassword: ${e.toString()} and code is ${e.code}',
      );
      if (e.code == 'invalid-credential') {
        throw CustomExceptions(
          message: "البريد الإلكتروني أو كلمة المرور خاطئة.",
        );
      } else if (e.code == 'user-not-found') {
        throw CustomExceptions(
          message: "لا يوجد حساب بهذا البريد الإلكتروني.",
        );
      } else if (e.code == 'wrong-password') {
        throw CustomExceptions(
          message: "كلمة المرور خاطئة.",
        );
      } else if (e.code == 'network-request-failed') {
        throw CustomExceptions(
          message: "تأكد من اتصالك بالإنترنت.",
        );
      } else {
        throw CustomExceptions(
          message: 'لقد حدث خطأ ما. حاول مرة أخرى',
        );
      }
    } catch (e) {
      log(
        'Exception in FirebaseAuthService.loginUserWithEmailAndPassword: ${e.toString()}',
      );
      throw CustomExceptions(
        message: 'لقد حدث خطأ ما. حاول مرة أخرى',
      );
    }
  }

  Future<User> signInWithGoogle() async {
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

    final GoogleSignInAuthentication? googleAuth =
        await googleUser?.authentication;

    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );

    return (await FirebaseAuth.instance.signInWithCredential(credential)).user!;
  }

  Future<User> signInWithFacebook() async {
    final LoginResult loginResult = await FacebookAuth.instance.login();

    final OAuthCredential facebookAuthCredential =
        FacebookAuthProvider.credential(
      loginResult.accessToken!.tokenString,
    );

    return (await FirebaseAuth.instance
            .signInWithCredential(facebookAuthCredential))
        .user!;
  }
}
