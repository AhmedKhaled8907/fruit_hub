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
      if (e.code == 'weak-password') {
        throw CustomExceptions(
          message: "كلمة المرور ضعيفة جداً.",
        );
      } else if (e.code == 'email-already-in-use') {
        throw CustomExceptions(
          message: "البريد الإلكتروني مستخدم مسبقاً.",
        );
      } else {
        throw CustomExceptions(
          message: 'لقد حدث خطأ ما. حاول مرة أخرى',
        );
      }
    } catch (e) {
      throw CustomExceptions(
        message: 'لقد حدث خطأ ما. حاول مرة أخرى',
      );
    }
  }
}
