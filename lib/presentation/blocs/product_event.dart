part of 'product_bloc.dart';

@freezed
class ProductEvent with _$ProductEvent {
  const factory ProductEvent.createProduct(
    CreateProductModel product,
  ) = _CreateProduct;
  const factory ProductEvent.getAllProduct() = _GetAllProduct;
  const factory ProductEvent.deleteProduct(String id) = _DeleteProduct;
}

@freezed
class GetFreeProductEvent with _$GetFreeProductEvent {
  const factory GetFreeProductEvent.getFreeProduct() = _GetFreeProduct;
}

@freezed
class GetExpiredProductEvent with _$GetExpiredProductEvent {
  const factory GetExpiredProductEvent.getExpiredProduct() = _GetExpiredProduct;
}
