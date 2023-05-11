import 'package:dartz/dartz.dart';

import '../../application/models/user_model.dart';
import '../exceptions.dart';
import '../repositories/auth_repository.dart';

class GetCurrentUser {
  final AuthRepository repository;

  GetCurrentUser(this.repository);

  Future<Either<Failure, UserModel>> execute(String id) {
    return repository.getCurrentUser(id);
  }
}
