import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../../application/models/user_model.dart';
import '../../domain/exceptions.dart';
import '../../domain/repositories/auth_repository.dart';
import '../exceptions.dart';
import '../services/auth_firebase.dart';

class AuthRepositoryIMPL implements AuthRepository {
  AuthRepositoryIMPL({required this.authFireBase});

  final AuthFireBase authFireBase;

  @override
  Future<Either<Failure, UserModel>> login(UserModel user) async {
    try {
      final result = await authFireBase.login(user);
      return Right(result);
    } on FirebaseAuthException catch (e) {
      return Left(FirebaseFailure('$e'));
    } on FirebaseException catch (e) {
      return Left(FirebaseFailure('$e'));
    } on SocketException {
      return const Left(ConnectionFailure('Failed to connect to the network'));
    }
  }

  @override
  Future<Either<Failure, UserModel>> register(UserModel user) async {
    try {
      final result = await authFireBase.register(user);
      return Right(result);
    } on FirebaseAuthException catch (e) {
      return Left(FirebaseFailure('$e'));
    } on FirebaseException catch (e) {
      return Left(FirebaseFailure('$e'));
    } on SocketException {
      return const Left(ConnectionFailure('Failed to connect to the network'));
    }
  }

  @override
  Future<Either<Failure, void>> logout() async {
    try {
      final result = await authFireBase.logout();
      return Right(result);
    } on FirebaseAuthException catch (e) {
      return Left(FirebaseFailure('$e'));
    } on FirebaseException catch (e) {
      return Left(FirebaseFailure('$e'));
    } on SocketException {
      return const Left(ConnectionFailure('Failed to connect to the network'));
    }
  }

  @override
  Future<Either<Failure, UserModel>> getCurrentUser(String id) async {
    try {
      final result = await authFireBase.getCurrentUser(id);
      return Right(result);
    } on FirebaseAuthException catch (e) {
      return Left(FirebaseFailure('$e'));
    } on FirebaseException catch (e) {
      return Left(FirebaseFailure('$e'));
    } on SocketException {
      return const Left(ConnectionFailure('Failed to connect to the network'));
    }
  }
}
