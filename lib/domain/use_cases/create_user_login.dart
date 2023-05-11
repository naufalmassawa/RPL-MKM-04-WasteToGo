import 'package:dartz/dartz.dart';

import '../../application/models/user_model.dart';
import '../exceptions.dart';
import '../repositories/auth_repository.dart';

class CreateUserLogin {
  final AuthRepository repository;

  CreateUserLogin(this.repository);

  Future<Either<Failure, UserModel>> execute(UserModel user) {
    return repository.login(user);
  }
}
