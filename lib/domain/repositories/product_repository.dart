import 'package:dartz/dartz.dart';

import '../../application/models/product_create_model.dart';
import '../../application/models/product_model.dart';
import '../exceptions.dart';

abstract class ProductRepository {
  Future<Either<Failure, List<ProductModel>>> getAllProduct();
  Future<Either<Failure, void>> createProduct(CreateProductModel product);
  Future<Either<Failure, void>> deleteProduct(String id);
  Future<Either<Failure, List<ProductModel>>> getFreeProducts();
  Future<Either<Failure, List<ProductModel>>> getExpireFood();
}
