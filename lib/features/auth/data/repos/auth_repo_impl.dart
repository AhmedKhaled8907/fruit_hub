import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:fruit_hub/core/errors/failure.dart';
import 'package:fruit_hub/core/services/firebase_auth_service.dart';
import 'package:fruit_hub/features/auth/data/models/user_model.dart';
import 'package:fruit_hub/features/auth/domain/entities/user_entity.dart';
import 'package:fruit_hub/features/auth/domain/repos/auth_repo.dart';

class AuthRepoImpl extends AuthRepo {
  final FirebaseAuthService firebaseAuthService;

  AuthRepoImpl({required this.firebaseAuthService});

  @override
  Future<Either<Failure, UserEntity>> createUserWithEmailAndPassword({
    required String email,
    required String password,
    required String name,
  }) async {
    try {
      var user = await firebaseAuthService.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      return right(
        UserModel.fromFirebaseUser(user),
      );
    } on Exception catch (e) {
      return left(
        ServerFailure(e.toString()),
      );
    } catch (e) {
      log(
        'Exception in AuthRepoImpl.createUserWithEmailAndPassword: ${e.toString()}',
      );
      return left(
        ServerFailure(
          'لقد حدث خطأ ما. حاول مرة أخرى',
        ),
      );
    }
  }

  @override
  Future<Either<Failure, UserEntity>> signinUserWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    try {
      var user = await firebaseAuthService.signinUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      return right(UserModel.fromFirebaseUser(user));
    } on Exception catch (e) {
      return left(ServerFailure(e.toString()));
    } catch (e) {
      log(
        'Exception in AuthRepoImpl.loginUserWithEmailAndPassword: ${e.toString()}',
      );
      return left(ServerFailure('لقد حدث خطأ ما. حاول مرة أخرى'));
    }
  }

  @override
  Future<Either<Failure, UserEntity>> signInWithGoogle() async {
    try {
      var user = await firebaseAuthService.signInWithGoogle();

      return right(UserModel.fromFirebaseUser(user));
    } catch (e) {
      log(
        'Exception in AuthRepoImpl.signInWithGoogle: ${e.toString()}',
      );
      return left(ServerFailure('لقد حدث خطأ ما. حاول مرة أخرى'));
    }
  }

  @override
  Future<Either<Failure, UserEntity>> signInWithFacebook() async {
    try {
      var user = await firebaseAuthService.signInWithFacebook();
      return right(UserModel.fromFirebaseUser(user));
    } catch (e) {
      log(
        'Exception in AuthRepoImpl.signInWithFacebook: ${e.toString()}',
      );
      return left(ServerFailure('لقد حدث خطأ ما. حاول مرة أخرى'));
    }
  }

  @override
  Future<Either<Failure, UserEntity>> signInWithApple() async {
    try {
      var user = await firebaseAuthService.signInWithApple();
      return right(UserModel.fromFirebaseUser(user));
    } catch (e) {
      log(
        'Exception in AuthRepoImpl.signInWithApple: ${e.toString()}',
      );
      return left(ServerFailure('لقد حدث خطأ ما. حاول مرة أخرى'));
    }
  }

}