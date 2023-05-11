import 'package:dartz/dartz.dart';
import '../exceptions.dart';
import '../repositories/product_repository.dart';

class DeleteProduct {
  final ProductRepository repository;

  DeleteProduct(this.repository);

  Future<Either<Failure, void>> execute(String id) async {
    return repository.deleteProduct(id);
  }
}
