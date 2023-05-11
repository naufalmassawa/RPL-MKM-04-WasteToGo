part of 'product_bloc.dart';

@freezed
class ProductState with _$ProductState {
  const factory ProductState.init() = _Initial;
  const factory ProductState.loading() = _Loading;
  const factory ProductState.error(String? message) = _Error;
  const factory ProductState.created() = _Created;
  const factory ProductState.delete() = _Delete;
  const factory ProductState.getFree(
    List<ProductModel> product,
  ) = _GetFree;
  const factory ProductState.loaded(
    List<ProductModel> product,
  ) = _Loaded;
  const factory ProductState.detailLoaded(
    ProductModel product,
  ) = _DetailLoaded;
  const factory ProductState.getExpired(
    List<ProductModel> product,
  ) = _GetExpired;
}
