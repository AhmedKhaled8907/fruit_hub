import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fruit_hub/core/errors/failure.dart';
import 'package:fruit_hub/core/helper/back_end_points.dart';
import 'package:fruit_hub/core/services/database_service.dart';
import 'package:fruit_hub/core/services/firebase_auth_service.dart';
import 'package:fruit_hub/features/auth/data/models/user_model.dart';
import 'package:fruit_hub/features/auth/domain/entities/user_entity.dart';
import 'package:fruit_hub/features/auth/domain/repos/auth_repo.dart';

class AuthRepoImpl extends AuthRepo {
  final FirebaseAuthService firebaseAuthService;
  final DatabaseService databaseService;

  AuthRepoImpl({
    required this.firebaseAuthService,
    required this.databaseService,
  });

  @override
  Future<Either<Failure, UserEntity>> createUserWithEmailAndPassword({
    required String email,
    required String password,
    required String name,
  }) async {
    User? user;
    try {
      user = await firebaseAuthService.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      var userEntity = UserEntity(
        name: name,
        email: email,
        uId: user.uid,
      );

      await addUserData(user: userEntity);

      return right(userEntity);
    } on Exception catch (e) {
      await deleteUser(user);
      return left(
        ServerFailure(e.toString()),
      );
    } catch (e) {
      await deleteUser(user);
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

      var userEntity = await getUserData(uId: user.uid);

      return right(userEntity);
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
    User? user;
    try {
      user = await firebaseAuthService.signInWithGoogle();

      var userEntity = UserModel.fromFirebaseUser(user);

      await checkIfUserExists(user, userEntity);

      return right(userEntity);
    } catch (e) {
      await deleteUser(user);
      log(
        'Exception in AuthRepoImpl.signInWithGoogle: ${e.toString()}',
      );
      return left(ServerFailure('لقد حدث خطأ ما. حاول مرة أخرى'));
    }
  }

  @override
  Future<Either<Failure, UserEntity>> signInWithFacebook() async {
    User? user;
    try {
      user = await firebaseAuthService.signInWithFacebook();

      var userEntity = UserModel.fromFirebaseUser(user);

      await checkIfUserExists(user, userEntity);

      return right(userEntity);
    } catch (e) {
      await deleteUser(user);

      log(
        'Exception in AuthRepoImpl.signInWithFacebook: ${e.toString()}',
      );
      return left(ServerFailure('لقد حدث خطأ ما. حاول مرة أخرى'));
    }
  }

  @override
  Future<Either<Failure, UserEntity>> signInWithApple() async {
    User? user;
    try {
      user = await firebaseAuthService.signInWithApple();

      var userEntity = UserModel.fromFirebaseUser(user);

      await checkIfUserExists(user, userEntity);

      return right(userEntity);
    } catch (e) {
      await deleteUser(user);
      log(
        'Exception in AuthRepoImpl.signInWithApple: ${e.toString()}',
      );
      return left(ServerFailure('لقد حدث خطأ ما. حاول مرة أخرى'));
    }
  }

  @override
  Future<void> addUserData({required UserEntity user}) async {
    await databaseService.addData(
      path: BackEndPoints.getUserData,
      data: user.toMap(),
      documentId: user.uId,
    );
  }

  Future<void> deleteUser(User? user) async {
    if (user != null) {
      await firebaseAuthService.deleteUser();
    }
  }

  @override
  Future<UserEntity> getUserData({required String uId}) async {
    var data = await databaseService.getData(
      path: BackEndPoints.getUserData,
      documentId: uId,
    );
    return UserModel.fromJson(data);
  }

  Future<void> checkIfUserExists(User user, UserModel userEntity) async {
    var doesUserExist = await databaseService.checkIfDataExists(
      path: BackEndPoints.ifUserExists,
      documentId: user.uid,
    );

    if (doesUserExist) {
      await getUserData(uId: user.uid);
    } else {
      await addUserData(user: userEntity);
    }
  }
}
