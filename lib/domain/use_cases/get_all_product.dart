import 'package:dartz/dartz.dart';

import '../../application/models/product_model.dart';
import '../exceptions.dart';
import '../repositories/product_repository.dart';

class GetAllProduct {
  final ProductRepository repository;

  GetAllProduct(this.repository);

  Future<Either<Failure, List<ProductModel>>> execute() async {
    return repository.getAllProduct();
  }
}
