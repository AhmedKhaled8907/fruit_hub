import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:fruit_hub/core/errors/custom_exceptions.dart';

class FirebaseAuthService {
  Future<User> createUserWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    var auth = FirebaseAuth.instance;
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

  Future<User> loginUserWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    var auth = FirebaseAuth.instance;
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
      if (e.code == 'wrong-password') {
        throw CustomExceptions(
          message: "كلمة المرور غير صحيحة.",
        );
      } else if (e.code == 'user-not-found') {
        throw CustomExceptions(
          message: "لا يوجد حساب بهذا البريد الإلكتروني.",
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
}
