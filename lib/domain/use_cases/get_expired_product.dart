import 'package:dartz/dartz.dart';
import 'package:waste_to_go/application/models/product_model.dart';
import 'package:waste_to_go/domain/exceptions.dart';
import 'package:waste_to_go/domain/repositories/product_repository.dart';

class GetExpiredProduct {
  final ProductRepository repository;

  GetExpiredProduct(this.repository);

  Future<Either<Failure, List<ProductModel>>> execute() async {
    return repository.getExpireFood();
  }
}
