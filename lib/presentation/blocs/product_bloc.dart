import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:waste_to_go/domain/use_cases/get_free_product.dart';
import '../../domain/use_cases/delete_product.dart';
import '../../application/models/product_create_model.dart';
import '../../application/models/product_model.dart';
import '../../domain/use_cases/create_product.dart';
import '../../domain/use_cases/get_all_product.dart';
import '../../domain/use_cases/get_expired_product.dart';

part 'product_event.dart';
part 'product_state.dart';
part 'product_bloc.freezed.dart';

class ProductBloc extends Bloc<ProductEvent, ProductState> {
  final CreateProduct _createProduct;
  final GetAllProduct _getAllProduct;
  final DeleteProduct _deleteProduct;

  ProductBloc(
    this._createProduct,
    this._getAllProduct,
    this._deleteProduct,
  ) : super(const _Initial()) {
    on<ProductEvent>((event, emit) async {
      await event.when(
        createProduct: (product) async {
          emit(const _Loading());
          final result = await _createProduct.execute(product);
          result.fold(
            (failure) => emit(_Error(failure.message)),
            (_) => emit(const _Created()),
          );
        },
        getAllProduct: () async {
          emit(const _Loading());
          final result = await _getAllProduct.execute();
          result.fold(
            (failure) => emit(_Error(failure.message)),
            (data) => emit(_Loaded(data)),
          );
        },
        deleteProduct: (id) async {
          emit(const _Loading());
          final result = await _deleteProduct.execute(id);
          result.fold(
            (failure) => emit(_Error(failure.message)),
            (_) => emit(const _Delete()),
          );
        },
      );
    });
  }
}

class GetFreeProductBloc extends Bloc<GetFreeProductEvent, ProductState> {
  final GetFreeProducts _getFreeProduct;

  GetFreeProductBloc(
    this._getFreeProduct,
  ) : super(const _Initial()) {
    on<GetFreeProductEvent>((event, emit) async {
      await event.when(
        getFreeProduct: () async {
          emit(const _Loading());
          final result = await _getFreeProduct.execute();
          result.fold(
            (failure) => emit(_Error(failure.message)),
            (data) => emit(_GetFree(data)),
          );
        },
      );
    });
  }
}

class GetExpiredProductBloc extends Bloc<GetExpiredProductEvent, ProductState> {
  final GetExpiredProduct _getExpiredProduct;

  GetExpiredProductBloc(
    this._getExpiredProduct,
  ) : super(const _Initial()) {
    on<GetExpiredProductEvent>((event, emit) async {
      await event.when(
        getExpiredProduct: () async {
          emit(const _Loading());
          final result = await _getExpiredProduct.execute();
          result.fold(
            (failure) => emit(_Error(failure.message)),
            (data) => emit(_GetExpired(data)),
          );
        },
      );
    });
  }
}
