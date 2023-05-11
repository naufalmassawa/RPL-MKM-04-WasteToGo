import 'package:dartz/dartz.dart';

import '../../application/models/product_create_model.dart';
import '../exceptions.dart';
import '../repositories/product_repository.dart';

class CreateProduct {
  final ProductRepository repository;

  CreateProduct(this.repository);

  Future<Either<Failure, void>> execute(
    CreateProductModel product,
  ) async {
    return repository.createProduct(product);
  }
}
