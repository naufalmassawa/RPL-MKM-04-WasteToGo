import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';

import '../../application/models/product_create_model.dart';
import '../../application/models/product_model.dart';
import '../../domain/exceptions.dart';
import '../../domain/repositories/product_repository.dart';
import '../exceptions.dart';
import '../services/product_firebase.dart';

class ProductRepositoryIMPL implements ProductRepository {
  final ProductDataServices dataServices;

  ProductRepositoryIMPL({required this.dataServices});

  @override
  Future<Either<Failure, void>> createProduct(
    CreateProductModel product,
  ) async {
    try {
      final result = await dataServices.createData(product);
      return Right(result);
    } on FirebaseException catch (e) {
      return Left(FirebaseFailure('$e'));
    } on SocketException {
      return const Left(ConnectionFailure('Failed to connect to the network'));
    }
  }

  @override
  Future<Either<Failure, List<ProductModel>>> getAllProduct() async {
    try {
      final result = await dataServices.getAllData();
      return Right(result);
    } on FirebaseException catch (e) {
      return Left(FirebaseFailure('$e'));
    } on SocketException {
      return const Left(ConnectionFailure('Failed to connect to the network'));
    }
  }

  @override
  Future<Either<Failure, void>> deleteProduct(String id) async {
    try {
      final result = await dataServices.deleteProduct(id);
      return Right(result);
    } on FirebaseException catch (e) {
      return Left(FirebaseFailure('$e'));
    } on SocketException {
      return const Left(ConnectionFailure('Failed to connect to the network'));
    }
  }

  @override
  Future<Either<Failure, List<ProductModel>>> getFreeProducts() async {
    try {
      final result = await dataServices.getFreeProducts();
      return Right(result);
    } on FirebaseException catch (e) {
      return Left(FirebaseFailure('$e'));
    } on SocketException {
      return const Left(ConnectionFailure('Failed to connect to the network'));
    }
  }

  @override
  Future<Either<Failure, List<ProductModel>>> getExpireFood() async {
    try {
      final result = await dataServices.getExpireFood();
      return Right(result);
    } on FirebaseException catch (e) {
      return Left(FirebaseFailure('$e'));
    } on SocketException {
      return const Left(ConnectionFailure('Failed to connect to the network'));
    }
  }
}
