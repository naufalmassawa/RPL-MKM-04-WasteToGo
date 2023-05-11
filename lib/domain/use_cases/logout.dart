import 'package:dartz/dartz.dart';

import '../exceptions.dart';
import '../repositories/auth_repository.dart';

class Logout {
  final AuthRepository repository;

  Logout(this.repository);

  Future<Either<Failure, void>> execute() {
    return repository.logout();
  }
}
