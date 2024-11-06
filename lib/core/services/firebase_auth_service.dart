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
          message: "The password provided is too weak.",
        );
      } else if (e.code == 'email-already-in-use') {
        throw CustomExceptions(
          message: "The account already exists for that email.",
        );
      } else {
        throw CustomExceptions(
          message: 'Something went wrong. Please try again later.',
        );
      }
    } catch (e) {
      throw CustomExceptions(
        message: 'Something went wrong. Please try again later.',
      );
    }
  }
}
