import 'package:dartz/dartz.dart';

import '../../application/models/user_model.dart';
import '../exceptions.dart';

abstract class AuthRepository {
  Future<Either<Failure, UserModel>> register(UserModel user);
  Future<Either<Failure, UserModel>> login(UserModel user);
  Future<Either<Failure, void>> logout();
  Future<Either<Failure, UserModel>> getCurrentUser(String id);
}
