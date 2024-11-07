import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_hub/features/auth/domain/entities/user_entity.dart';
import 'package:fruit_hub/features/auth/domain/repos/auth_repo.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit(this.authRepo) : super(LoginInitial());

  final AuthRepo authRepo;

  Future<void> loginUserWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    emit(LoginLoading());

    var result = await authRepo.loginUserWithEmailAndPassword(
      email: email,
      password: password,
    );
    result.fold(
      (failure) => emit(
        LoginFailure(message: failure.message),
      ),
      (user) => emit(
        LoginSuccess(userEntity: user),
      ),
    );
  }
}
