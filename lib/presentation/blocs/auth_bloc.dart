import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../application/models/user_model.dart';
import '../../domain/use_cases/create_user_login.dart';
import '../../domain/use_cases/create_user_register.dart';
import '../../domain/use_cases/get_current_user.dart';
import '../../domain/use_cases/logout.dart';

part 'auth_bloc.freezed.dart';
part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final GetCurrentUser _getCurrentUser;
  final CreateUserLogin _login;
  final CreateUserRegister _register;
  final Logout _logout;

  AuthBloc(
    this._getCurrentUser,
    this._login,
    this._register,
    this._logout,
  ) : super(const _Initial()) {
    on<AuthEvent>(
      (event, emit) async {
        await event.whenOrNull(
          currentUser: (id) async {
            emit(const _Loading());
            final result = await _getCurrentUser.execute(id);
            result.fold(
              (failure) => emit(_Error(message: failure.message)),
              (data) => emit(_Loaded(user: data)),
            );
          },
          login: (user) async {
            emit(const _Loading());
            final result = await _login.execute(user!);
            result.fold(
              (failure) => emit(_Error(message: failure.message)),
              (data) => emit(_Loaded(user: data)),
            );
          },
          register: (user) async {
            emit(const _Loading());
            final result = await _register.execute(user!);
            result.fold(
              (failure) => emit(_Error(message: failure.message)),
              (data) => emit(_Loaded(user: data)),
            );
          },
          logout: () async {
            emit(const _Loading());
            final result = await _logout.execute();
            result.fold(
              (failure) => emit(_Error(message: failure.message)),
              (_) => emit(const _Initial()),
            );
          },
        );
      },
    );
  }
}
