// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProductEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CreateProductModel product) createProduct,
    required TResult Function() getAllProduct,
    required TResult Function(String id) deleteProduct,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CreateProductModel product)? createProduct,
    TResult? Function()? getAllProduct,
    TResult? Function(String id)? deleteProduct,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CreateProductModel product)? createProduct,
    TResult Function()? getAllProduct,
    TResult Function(String id)? deleteProduct,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateProduct value) createProduct,
    required TResult Function(_GetAllProduct value) getAllProduct,
    required TResult Function(_DeleteProduct value) deleteProduct,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreateProduct value)? createProduct,
    TResult? Function(_GetAllProduct value)? getAllProduct,
    TResult? Function(_DeleteProduct value)? deleteProduct,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateProduct value)? createProduct,
    TResult Function(_GetAllProduct value)? getAllProduct,
    TResult Function(_DeleteProduct value)? deleteProduct,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductEventCopyWith<$Res> {
  factory $ProductEventCopyWith(
          ProductEvent value, $Res Function(ProductEvent) then) =
      _$ProductEventCopyWithImpl<$Res, ProductEvent>;
}

/// @nodoc
class _$ProductEventCopyWithImpl<$Res, $Val extends ProductEvent>
    implements $ProductEventCopyWith<$Res> {
  _$ProductEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_CreateProductCopyWith<$Res> {
  factory _$$_CreateProductCopyWith(
          _$_CreateProduct value, $Res Function(_$_CreateProduct) then) =
      __$$_CreateProductCopyWithImpl<$Res>;
  @useResult
  $Res call({CreateProductModel product});
}

/// @nodoc
class __$$_CreateProductCopyWithImpl<$Res>
    extends _$ProductEventCopyWithImpl<$Res, _$_CreateProduct>
    implements _$$_CreateProductCopyWith<$Res> {
  __$$_CreateProductCopyWithImpl(
      _$_CreateProduct _value, $Res Function(_$_CreateProduct) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = null,
  }) {
    return _then(_$_CreateProduct(
      null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as CreateProductModel,
    ));
  }
}

/// @nodoc

class _$_CreateProduct implements _CreateProduct {
  const _$_CreateProduct(this.product);

  @override
  final CreateProductModel product;

  @override
  String toString() {
    return 'ProductEvent.createProduct(product: $product)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreateProduct &&
            (identical(other.product, product) || other.product == product));
  }

  @override
  int get hashCode => Object.hash(runtimeType, product);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CreateProductCopyWith<_$_CreateProduct> get copyWith =>
      __$$_CreateProductCopyWithImpl<_$_CreateProduct>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CreateProductModel product) createProduct,
    required TResult Function() getAllProduct,
    required TResult Function(String id) deleteProduct,
  }) {
    return createProduct(product);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CreateProductModel product)? createProduct,
    TResult? Function()? getAllProduct,
    TResult? Function(String id)? deleteProduct,
  }) {
    return createProduct?.call(product);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CreateProductModel product)? createProduct,
    TResult Function()? getAllProduct,
    TResult Function(String id)? deleteProduct,
    required TResult orElse(),
  }) {
    if (createProduct != null) {
      return createProduct(product);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateProduct value) createProduct,
    required TResult Function(_GetAllProduct value) getAllProduct,
    required TResult Function(_DeleteProduct value) deleteProduct,
  }) {
    return createProduct(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreateProduct value)? createProduct,
    TResult? Function(_GetAllProduct value)? getAllProduct,
    TResult? Function(_DeleteProduct value)? deleteProduct,
  }) {
    return createProduct?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateProduct value)? createProduct,
    TResult Function(_GetAllProduct value)? getAllProduct,
    TResult Function(_DeleteProduct value)? deleteProduct,
    required TResult orElse(),
  }) {
    if (createProduct != null) {
      return createProduct(this);
    }
    return orElse();
  }
}

abstract class _CreateProduct implements ProductEvent {
  const factory _CreateProduct(final CreateProductModel product) =
      _$_CreateProduct;

  CreateProductModel get product;
  @JsonKey(ignore: true)
  _$$_CreateProductCopyWith<_$_CreateProduct> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_GetAllProductCopyWith<$Res> {
  factory _$$_GetAllProductCopyWith(
          _$_GetAllProduct value, $Res Function(_$_GetAllProduct) then) =
      __$$_GetAllProductCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_GetAllProductCopyWithImpl<$Res>
    extends _$ProductEventCopyWithImpl<$Res, _$_GetAllProduct>
    implements _$$_GetAllProductCopyWith<$Res> {
  __$$_GetAllProductCopyWithImpl(
      _$_GetAllProduct _value, $Res Function(_$_GetAllProduct) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_GetAllProduct implements _GetAllProduct {
  const _$_GetAllProduct();

  @override
  String toString() {
    return 'ProductEvent.getAllProduct()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_GetAllProduct);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CreateProductModel product) createProduct,
    required TResult Function() getAllProduct,
    required TResult Function(String id) deleteProduct,
  }) {
    return getAllProduct();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CreateProductModel product)? createProduct,
    TResult? Function()? getAllProduct,
    TResult? Function(String id)? deleteProduct,
  }) {
    return getAllProduct?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CreateProductModel product)? createProduct,
    TResult Function()? getAllProduct,
    TResult Function(String id)? deleteProduct,
    required TResult orElse(),
  }) {
    if (getAllProduct != null) {
      return getAllProduct();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateProduct value) createProduct,
    required TResult Function(_GetAllProduct value) getAllProduct,
    required TResult Function(_DeleteProduct value) deleteProduct,
  }) {
    return getAllProduct(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreateProduct value)? createProduct,
    TResult? Function(_GetAllProduct value)? getAllProduct,
    TResult? Function(_DeleteProduct value)? deleteProduct,
  }) {
    return getAllProduct?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateProduct value)? createProduct,
    TResult Function(_GetAllProduct value)? getAllProduct,
    TResult Function(_DeleteProduct value)? deleteProduct,
    required TResult orElse(),
  }) {
    if (getAllProduct != null) {
      return getAllProduct(this);
    }
    return orElse();
  }
}

abstract class _GetAllProduct implements ProductEvent {
  const factory _GetAllProduct() = _$_GetAllProduct;
}

/// @nodoc
abstract class _$$_DeleteProductCopyWith<$Res> {
  factory _$$_DeleteProductCopyWith(
          _$_DeleteProduct value, $Res Function(_$_DeleteProduct) then) =
      __$$_DeleteProductCopyWithImpl<$Res>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$_DeleteProductCopyWithImpl<$Res>
    extends _$ProductEventCopyWithImpl<$Res, _$_DeleteProduct>
    implements _$$_DeleteProductCopyWith<$Res> {
  __$$_DeleteProductCopyWithImpl(
      _$_DeleteProduct _value, $Res Function(_$_DeleteProduct) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$_DeleteProduct(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_DeleteProduct implements _DeleteProduct {
  const _$_DeleteProduct(this.id);

  @override
  final String id;

  @override
  String toString() {
    return 'ProductEvent.deleteProduct(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DeleteProduct &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DeleteProductCopyWith<_$_DeleteProduct> get copyWith =>
      __$$_DeleteProductCopyWithImpl<_$_DeleteProduct>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CreateProductModel product) createProduct,
    required TResult Function() getAllProduct,
    required TResult Function(String id) deleteProduct,
  }) {
    return deleteProduct(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CreateProductModel product)? createProduct,
    TResult? Function()? getAllProduct,
    TResult? Function(String id)? deleteProduct,
  }) {
    return deleteProduct?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CreateProductModel product)? createProduct,
    TResult Function()? getAllProduct,
    TResult Function(String id)? deleteProduct,
    required TResult orElse(),
  }) {
    if (deleteProduct != null) {
      return deleteProduct(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateProduct value) createProduct,
    required TResult Function(_GetAllProduct value) getAllProduct,
    required TResult Function(_DeleteProduct value) deleteProduct,
  }) {
    return deleteProduct(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreateProduct value)? createProduct,
    TResult? Function(_GetAllProduct value)? getAllProduct,
    TResult? Function(_DeleteProduct value)? deleteProduct,
  }) {
    return deleteProduct?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateProduct value)? createProduct,
    TResult Function(_GetAllProduct value)? getAllProduct,
    TResult Function(_DeleteProduct value)? deleteProduct,
    required TResult orElse(),
  }) {
    if (deleteProduct != null) {
      return deleteProduct(this);
    }
    return orElse();
  }
}

abstract class _DeleteProduct implements ProductEvent {
  const factory _DeleteProduct(final String id) = _$_DeleteProduct;

  String get id;
  @JsonKey(ignore: true)
  _$$_DeleteProductCopyWith<_$_DeleteProduct> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$GetFreeProductEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getFreeProduct,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getFreeProduct,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getFreeProduct,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetFreeProduct value) getFreeProduct,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetFreeProduct value)? getFreeProduct,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetFreeProduct value)? getFreeProduct,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetFreeProductEventCopyWith<$Res> {
  factory $GetFreeProductEventCopyWith(
          GetFreeProductEvent value, $Res Function(GetFreeProductEvent) then) =
      _$GetFreeProductEventCopyWithImpl<$Res, GetFreeProductEvent>;
}

/// @nodoc
class _$GetFreeProductEventCopyWithImpl<$Res, $Val extends GetFreeProductEvent>
    implements $GetFreeProductEventCopyWith<$Res> {
  _$GetFreeProductEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_GetFreeProductCopyWith<$Res> {
  factory _$$_GetFreeProductCopyWith(
          _$_GetFreeProduct value, $Res Function(_$_GetFreeProduct) then) =
      __$$_GetFreeProductCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_GetFreeProductCopyWithImpl<$Res>
    extends _$GetFreeProductEventCopyWithImpl<$Res, _$_GetFreeProduct>
    implements _$$_GetFreeProductCopyWith<$Res> {
  __$$_GetFreeProductCopyWithImpl(
      _$_GetFreeProduct _value, $Res Function(_$_GetFreeProduct) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_GetFreeProduct implements _GetFreeProduct {
  const _$_GetFreeProduct();

  @override
  String toString() {
    return 'GetFreeProductEvent.getFreeProduct()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_GetFreeProduct);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getFreeProduct,
  }) {
    return getFreeProduct();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getFreeProduct,
  }) {
    return getFreeProduct?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getFreeProduct,
    required TResult orElse(),
  }) {
    if (getFreeProduct != null) {
      return getFreeProduct();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetFreeProduct value) getFreeProduct,
  }) {
    return getFreeProduct(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetFreeProduct value)? getFreeProduct,
  }) {
    return getFreeProduct?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetFreeProduct value)? getFreeProduct,
    required TResult orElse(),
  }) {
    if (getFreeProduct != null) {
      return getFreeProduct(this);
    }
    return orElse();
  }
}

abstract class _GetFreeProduct implements GetFreeProductEvent {
  const factory _GetFreeProduct() = _$_GetFreeProduct;
}

/// @nodoc
mixin _$GetExpiredProductEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getExpiredProduct,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getExpiredProduct,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getExpiredProduct,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetExpiredProduct value) getExpiredProduct,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetExpiredProduct value)? getExpiredProduct,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetExpiredProduct value)? getExpiredProduct,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetExpiredProductEventCopyWith<$Res> {
  factory $GetExpiredProductEventCopyWith(GetExpiredProductEvent value,
          $Res Function(GetExpiredProductEvent) then) =
      _$GetExpiredProductEventCopyWithImpl<$Res, GetExpiredProductEvent>;
}

/// @nodoc
class _$GetExpiredProductEventCopyWithImpl<$Res,
        $Val extends GetExpiredProductEvent>
    implements $GetExpiredProductEventCopyWith<$Res> {
  _$GetExpiredProductEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_GetExpiredProductCopyWith<$Res> {
  factory _$$_GetExpiredProductCopyWith(_$_GetExpiredProduct value,
          $Res Function(_$_GetExpiredProduct) then) =
      __$$_GetExpiredProductCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_GetExpiredProductCopyWithImpl<$Res>
    extends _$GetExpiredProductEventCopyWithImpl<$Res, _$_GetExpiredProduct>
    implements _$$_GetExpiredProductCopyWith<$Res> {
  __$$_GetExpiredProductCopyWithImpl(
      _$_GetExpiredProduct _value, $Res Function(_$_GetExpiredProduct) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_GetExpiredProduct implements _GetExpiredProduct {
  const _$_GetExpiredProduct();

  @override
  String toString() {
    return 'GetExpiredProductEvent.getExpiredProduct()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_GetExpiredProduct);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getExpiredProduct,
  }) {
    return getExpiredProduct();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getExpiredProduct,
  }) {
    return getExpiredProduct?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getExpiredProduct,
    required TResult orElse(),
  }) {
    if (getExpiredProduct != null) {
      return getExpiredProduct();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetExpiredProduct value) getExpiredProduct,
  }) {
    return getExpiredProduct(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetExpiredProduct value)? getExpiredProduct,
  }) {
    return getExpiredProduct?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetExpiredProduct value)? getExpiredProduct,
    required TResult orElse(),
  }) {
    if (getExpiredProduct != null) {
      return getExpiredProduct(this);
    }
    return orElse();
  }
}

abstract class _GetExpiredProduct implements GetExpiredProductEvent {
  const factory _GetExpiredProduct() = _$_GetExpiredProduct;
}

/// @nodoc
mixin _$ProductState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() loading,
    required TResult Function(String? message) error,
    required TResult Function() created,
    required TResult Function() delete,
    required TResult Function(List<ProductModel> product) getFree,
    required TResult Function(List<ProductModel> product) loaded,
    required TResult Function(ProductModel product) detailLoaded,
    required TResult Function(List<ProductModel> product) getExpired,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? loading,
    TResult? Function(String? message)? error,
    TResult? Function()? created,
    TResult? Function()? delete,
    TResult? Function(List<ProductModel> product)? getFree,
    TResult? Function(List<ProductModel> product)? loaded,
    TResult? Function(ProductModel product)? detailLoaded,
    TResult? Function(List<ProductModel> product)? getExpired,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(String? message)? error,
    TResult Function()? created,
    TResult Function()? delete,
    TResult Function(List<ProductModel> product)? getFree,
    TResult Function(List<ProductModel> product)? loaded,
    TResult Function(ProductModel product)? detailLoaded,
    TResult Function(List<ProductModel> product)? getExpired,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) init,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_Created value) created,
    required TResult Function(_Delete value) delete,
    required TResult Function(_GetFree value) getFree,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_DetailLoaded value) detailLoaded,
    required TResult Function(_GetExpired value) getExpired,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? init,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_Created value)? created,
    TResult? Function(_Delete value)? delete,
    TResult? Function(_GetFree value)? getFree,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_DetailLoaded value)? detailLoaded,
    TResult? Function(_GetExpired value)? getExpired,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? init,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_Created value)? created,
    TResult Function(_Delete value)? delete,
    TResult Function(_GetFree value)? getFree,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_DetailLoaded value)? detailLoaded,
    TResult Function(_GetExpired value)? getExpired,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductStateCopyWith<$Res> {
  factory $ProductStateCopyWith(
          ProductState value, $Res Function(ProductState) then) =
      _$ProductStateCopyWithImpl<$Res, ProductState>;
}

/// @nodoc
class _$ProductStateCopyWithImpl<$Res, $Val extends ProductState>
    implements $ProductStateCopyWith<$Res> {
  _$ProductStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$ProductStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'ProductState.init()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() loading,
    required TResult Function(String? message) error,
    required TResult Function() created,
    required TResult Function() delete,
    required TResult Function(List<ProductModel> product) getFree,
    required TResult Function(List<ProductModel> product) loaded,
    required TResult Function(ProductModel product) detailLoaded,
    required TResult Function(List<ProductModel> product) getExpired,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? loading,
    TResult? Function(String? message)? error,
    TResult? Function()? created,
    TResult? Function()? delete,
    TResult? Function(List<ProductModel> product)? getFree,
    TResult? Function(List<ProductModel> product)? loaded,
    TResult? Function(ProductModel product)? detailLoaded,
    TResult? Function(List<ProductModel> product)? getExpired,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(String? message)? error,
    TResult Function()? created,
    TResult Function()? delete,
    TResult Function(List<ProductModel> product)? getFree,
    TResult Function(List<ProductModel> product)? loaded,
    TResult Function(ProductModel product)? detailLoaded,
    TResult Function(List<ProductModel> product)? getExpired,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) init,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_Created value) created,
    required TResult Function(_Delete value) delete,
    required TResult Function(_GetFree value) getFree,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_DetailLoaded value) detailLoaded,
    required TResult Function(_GetExpired value) getExpired,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? init,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_Created value)? created,
    TResult? Function(_Delete value)? delete,
    TResult? Function(_GetFree value)? getFree,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_DetailLoaded value)? detailLoaded,
    TResult? Function(_GetExpired value)? getExpired,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? init,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_Created value)? created,
    TResult Function(_Delete value)? delete,
    TResult Function(_GetFree value)? getFree,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_DetailLoaded value)? detailLoaded,
    TResult Function(_GetExpired value)? getExpired,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ProductState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_LoadingCopyWith<$Res> {
  factory _$$_LoadingCopyWith(
          _$_Loading value, $Res Function(_$_Loading) then) =
      __$$_LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadingCopyWithImpl<$Res>
    extends _$ProductStateCopyWithImpl<$Res, _$_Loading>
    implements _$$_LoadingCopyWith<$Res> {
  __$$_LoadingCopyWithImpl(_$_Loading _value, $Res Function(_$_Loading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'ProductState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() loading,
    required TResult Function(String? message) error,
    required TResult Function() created,
    required TResult Function() delete,
    required TResult Function(List<ProductModel> product) getFree,
    required TResult Function(List<ProductModel> product) loaded,
    required TResult Function(ProductModel product) detailLoaded,
    required TResult Function(List<ProductModel> product) getExpired,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? loading,
    TResult? Function(String? message)? error,
    TResult? Function()? created,
    TResult? Function()? delete,
    TResult? Function(List<ProductModel> product)? getFree,
    TResult? Function(List<ProductModel> product)? loaded,
    TResult? Function(ProductModel product)? detailLoaded,
    TResult? Function(List<ProductModel> product)? getExpired,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(String? message)? error,
    TResult Function()? created,
    TResult Function()? delete,
    TResult Function(List<ProductModel> product)? getFree,
    TResult Function(List<ProductModel> product)? loaded,
    TResult Function(ProductModel product)? detailLoaded,
    TResult Function(List<ProductModel> product)? getExpired,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) init,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_Created value) created,
    required TResult Function(_Delete value) delete,
    required TResult Function(_GetFree value) getFree,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_DetailLoaded value) detailLoaded,
    required TResult Function(_GetExpired value) getExpired,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? init,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_Created value)? created,
    TResult? Function(_Delete value)? delete,
    TResult? Function(_GetFree value)? getFree,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_DetailLoaded value)? detailLoaded,
    TResult? Function(_GetExpired value)? getExpired,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? init,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_Created value)? created,
    TResult Function(_Delete value)? delete,
    TResult Function(_GetFree value)? getFree,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_DetailLoaded value)? detailLoaded,
    TResult Function(_GetExpired value)? getExpired,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements ProductState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$$_ErrorCopyWith<$Res> {
  factory _$$_ErrorCopyWith(_$_Error value, $Res Function(_$_Error) then) =
      __$$_ErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$_ErrorCopyWithImpl<$Res>
    extends _$ProductStateCopyWithImpl<$Res, _$_Error>
    implements _$$_ErrorCopyWith<$Res> {
  __$$_ErrorCopyWithImpl(_$_Error _value, $Res Function(_$_Error) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$_Error(
      freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_Error implements _Error {
  const _$_Error(this.message);

  @override
  final String? message;

  @override
  String toString() {
    return 'ProductState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Error &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ErrorCopyWith<_$_Error> get copyWith =>
      __$$_ErrorCopyWithImpl<_$_Error>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() loading,
    required TResult Function(String? message) error,
    required TResult Function() created,
    required TResult Function() delete,
    required TResult Function(List<ProductModel> product) getFree,
    required TResult Function(List<ProductModel> product) loaded,
    required TResult Function(ProductModel product) detailLoaded,
    required TResult Function(List<ProductModel> product) getExpired,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? loading,
    TResult? Function(String? message)? error,
    TResult? Function()? created,
    TResult? Function()? delete,
    TResult? Function(List<ProductModel> product)? getFree,
    TResult? Function(List<ProductModel> product)? loaded,
    TResult? Function(ProductModel product)? detailLoaded,
    TResult? Function(List<ProductModel> product)? getExpired,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(String? message)? error,
    TResult Function()? created,
    TResult Function()? delete,
    TResult Function(List<ProductModel> product)? getFree,
    TResult Function(List<ProductModel> product)? loaded,
    TResult Function(ProductModel product)? detailLoaded,
    TResult Function(List<ProductModel> product)? getExpired,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) init,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_Created value) created,
    required TResult Function(_Delete value) delete,
    required TResult Function(_GetFree value) getFree,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_DetailLoaded value) detailLoaded,
    required TResult Function(_GetExpired value) getExpired,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? init,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_Created value)? created,
    TResult? Function(_Delete value)? delete,
    TResult? Function(_GetFree value)? getFree,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_DetailLoaded value)? detailLoaded,
    TResult? Function(_GetExpired value)? getExpired,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? init,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_Created value)? created,
    TResult Function(_Delete value)? delete,
    TResult Function(_GetFree value)? getFree,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_DetailLoaded value)? detailLoaded,
    TResult Function(_GetExpired value)? getExpired,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements ProductState {
  const factory _Error(final String? message) = _$_Error;

  String? get message;
  @JsonKey(ignore: true)
  _$$_ErrorCopyWith<_$_Error> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_CreatedCopyWith<$Res> {
  factory _$$_CreatedCopyWith(
          _$_Created value, $Res Function(_$_Created) then) =
      __$$_CreatedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_CreatedCopyWithImpl<$Res>
    extends _$ProductStateCopyWithImpl<$Res, _$_Created>
    implements _$$_CreatedCopyWith<$Res> {
  __$$_CreatedCopyWithImpl(_$_Created _value, $Res Function(_$_Created) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Created implements _Created {
  const _$_Created();

  @override
  String toString() {
    return 'ProductState.created()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Created);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() loading,
    required TResult Function(String? message) error,
    required TResult Function() created,
    required TResult Function() delete,
    required TResult Function(List<ProductModel> product) getFree,
    required TResult Function(List<ProductModel> product) loaded,
    required TResult Function(ProductModel product) detailLoaded,
    required TResult Function(List<ProductModel> product) getExpired,
  }) {
    return created();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? loading,
    TResult? Function(String? message)? error,
    TResult? Function()? created,
    TResult? Function()? delete,
    TResult? Function(List<ProductModel> product)? getFree,
    TResult? Function(List<ProductModel> product)? loaded,
    TResult? Function(ProductModel product)? detailLoaded,
    TResult? Function(List<ProductModel> product)? getExpired,
  }) {
    return created?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(String? message)? error,
    TResult Function()? created,
    TResult Function()? delete,
    TResult Function(List<ProductModel> product)? getFree,
    TResult Function(List<ProductModel> product)? loaded,
    TResult Function(ProductModel product)? detailLoaded,
    TResult Function(List<ProductModel> product)? getExpired,
    required TResult orElse(),
  }) {
    if (created != null) {
      return created();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) init,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_Created value) created,
    required TResult Function(_Delete value) delete,
    required TResult Function(_GetFree value) getFree,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_DetailLoaded value) detailLoaded,
    required TResult Function(_GetExpired value) getExpired,
  }) {
    return created(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? init,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_Created value)? created,
    TResult? Function(_Delete value)? delete,
    TResult? Function(_GetFree value)? getFree,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_DetailLoaded value)? detailLoaded,
    TResult? Function(_GetExpired value)? getExpired,
  }) {
    return created?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? init,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_Created value)? created,
    TResult Function(_Delete value)? delete,
    TResult Function(_GetFree value)? getFree,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_DetailLoaded value)? detailLoaded,
    TResult Function(_GetExpired value)? getExpired,
    required TResult orElse(),
  }) {
    if (created != null) {
      return created(this);
    }
    return orElse();
  }
}

abstract class _Created implements ProductState {
  const factory _Created() = _$_Created;
}

/// @nodoc
abstract class _$$_DeleteCopyWith<$Res> {
  factory _$$_DeleteCopyWith(_$_Delete value, $Res Function(_$_Delete) then) =
      __$$_DeleteCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_DeleteCopyWithImpl<$Res>
    extends _$ProductStateCopyWithImpl<$Res, _$_Delete>
    implements _$$_DeleteCopyWith<$Res> {
  __$$_DeleteCopyWithImpl(_$_Delete _value, $Res Function(_$_Delete) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Delete implements _Delete {
  const _$_Delete();

  @override
  String toString() {
    return 'ProductState.delete()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Delete);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() loading,
    required TResult Function(String? message) error,
    required TResult Function() created,
    required TResult Function() delete,
    required TResult Function(List<ProductModel> product) getFree,
    required TResult Function(List<ProductModel> product) loaded,
    required TResult Function(ProductModel product) detailLoaded,
    required TResult Function(List<ProductModel> product) getExpired,
  }) {
    return delete();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? loading,
    TResult? Function(String? message)? error,
    TResult? Function()? created,
    TResult? Function()? delete,
    TResult? Function(List<ProductModel> product)? getFree,
    TResult? Function(List<ProductModel> product)? loaded,
    TResult? Function(ProductModel product)? detailLoaded,
    TResult? Function(List<ProductModel> product)? getExpired,
  }) {
    return delete?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(String? message)? error,
    TResult Function()? created,
    TResult Function()? delete,
    TResult Function(List<ProductModel> product)? getFree,
    TResult Function(List<ProductModel> product)? loaded,
    TResult Function(ProductModel product)? detailLoaded,
    TResult Function(List<ProductModel> product)? getExpired,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) init,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_Created value) created,
    required TResult Function(_Delete value) delete,
    required TResult Function(_GetFree value) getFree,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_DetailLoaded value) detailLoaded,
    required TResult Function(_GetExpired value) getExpired,
  }) {
    return delete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? init,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_Created value)? created,
    TResult? Function(_Delete value)? delete,
    TResult? Function(_GetFree value)? getFree,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_DetailLoaded value)? detailLoaded,
    TResult? Function(_GetExpired value)? getExpired,
  }) {
    return delete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? init,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_Created value)? created,
    TResult Function(_Delete value)? delete,
    TResult Function(_GetFree value)? getFree,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_DetailLoaded value)? detailLoaded,
    TResult Function(_GetExpired value)? getExpired,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(this);
    }
    return orElse();
  }
}

abstract class _Delete implements ProductState {
  const factory _Delete() = _$_Delete;
}

/// @nodoc
abstract class _$$_GetFreeCopyWith<$Res> {
  factory _$$_GetFreeCopyWith(
          _$_GetFree value, $Res Function(_$_GetFree) then) =
      __$$_GetFreeCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ProductModel> product});
}

/// @nodoc
class __$$_GetFreeCopyWithImpl<$Res>
    extends _$ProductStateCopyWithImpl<$Res, _$_GetFree>
    implements _$$_GetFreeCopyWith<$Res> {
  __$$_GetFreeCopyWithImpl(_$_GetFree _value, $Res Function(_$_GetFree) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = null,
  }) {
    return _then(_$_GetFree(
      null == product
          ? _value._product
          : product // ignore: cast_nullable_to_non_nullable
              as List<ProductModel>,
    ));
  }
}

/// @nodoc

class _$_GetFree implements _GetFree {
  const _$_GetFree(final List<ProductModel> product) : _product = product;

  final List<ProductModel> _product;
  @override
  List<ProductModel> get product {
    if (_product is EqualUnmodifiableListView) return _product;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_product);
  }

  @override
  String toString() {
    return 'ProductState.getFree(product: $product)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetFree &&
            const DeepCollectionEquality().equals(other._product, _product));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_product));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetFreeCopyWith<_$_GetFree> get copyWith =>
      __$$_GetFreeCopyWithImpl<_$_GetFree>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() loading,
    required TResult Function(String? message) error,
    required TResult Function() created,
    required TResult Function() delete,
    required TResult Function(List<ProductModel> product) getFree,
    required TResult Function(List<ProductModel> product) loaded,
    required TResult Function(ProductModel product) detailLoaded,
    required TResult Function(List<ProductModel> product) getExpired,
  }) {
    return getFree(product);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? loading,
    TResult? Function(String? message)? error,
    TResult? Function()? created,
    TResult? Function()? delete,
    TResult? Function(List<ProductModel> product)? getFree,
    TResult? Function(List<ProductModel> product)? loaded,
    TResult? Function(ProductModel product)? detailLoaded,
    TResult? Function(List<ProductModel> product)? getExpired,
  }) {
    return getFree?.call(product);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(String? message)? error,
    TResult Function()? created,
    TResult Function()? delete,
    TResult Function(List<ProductModel> product)? getFree,
    TResult Function(List<ProductModel> product)? loaded,
    TResult Function(ProductModel product)? detailLoaded,
    TResult Function(List<ProductModel> product)? getExpired,
    required TResult orElse(),
  }) {
    if (getFree != null) {
      return getFree(product);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) init,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_Created value) created,
    required TResult Function(_Delete value) delete,
    required TResult Function(_GetFree value) getFree,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_DetailLoaded value) detailLoaded,
    required TResult Function(_GetExpired value) getExpired,
  }) {
    return getFree(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? init,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_Created value)? created,
    TResult? Function(_Delete value)? delete,
    TResult? Function(_GetFree value)? getFree,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_DetailLoaded value)? detailLoaded,
    TResult? Function(_GetExpired value)? getExpired,
  }) {
    return getFree?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? init,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_Created value)? created,
    TResult Function(_Delete value)? delete,
    TResult Function(_GetFree value)? getFree,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_DetailLoaded value)? detailLoaded,
    TResult Function(_GetExpired value)? getExpired,
    required TResult orElse(),
  }) {
    if (getFree != null) {
      return getFree(this);
    }
    return orElse();
  }
}

abstract class _GetFree implements ProductState {
  const factory _GetFree(final List<ProductModel> product) = _$_GetFree;

  List<ProductModel> get product;
  @JsonKey(ignore: true)
  _$$_GetFreeCopyWith<_$_GetFree> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadedCopyWith<$Res> {
  factory _$$_LoadedCopyWith(_$_Loaded value, $Res Function(_$_Loaded) then) =
      __$$_LoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ProductModel> product});
}

/// @nodoc
class __$$_LoadedCopyWithImpl<$Res>
    extends _$ProductStateCopyWithImpl<$Res, _$_Loaded>
    implements _$$_LoadedCopyWith<$Res> {
  __$$_LoadedCopyWithImpl(_$_Loaded _value, $Res Function(_$_Loaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = null,
  }) {
    return _then(_$_Loaded(
      null == product
          ? _value._product
          : product // ignore: cast_nullable_to_non_nullable
              as List<ProductModel>,
    ));
  }
}

/// @nodoc

class _$_Loaded implements _Loaded {
  const _$_Loaded(final List<ProductModel> product) : _product = product;

  final List<ProductModel> _product;
  @override
  List<ProductModel> get product {
    if (_product is EqualUnmodifiableListView) return _product;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_product);
  }

  @override
  String toString() {
    return 'ProductState.loaded(product: $product)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Loaded &&
            const DeepCollectionEquality().equals(other._product, _product));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_product));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadedCopyWith<_$_Loaded> get copyWith =>
      __$$_LoadedCopyWithImpl<_$_Loaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() loading,
    required TResult Function(String? message) error,
    required TResult Function() created,
    required TResult Function() delete,
    required TResult Function(List<ProductModel> product) getFree,
    required TResult Function(List<ProductModel> product) loaded,
    required TResult Function(ProductModel product) detailLoaded,
    required TResult Function(List<ProductModel> product) getExpired,
  }) {
    return loaded(product);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? loading,
    TResult? Function(String? message)? error,
    TResult? Function()? created,
    TResult? Function()? delete,
    TResult? Function(List<ProductModel> product)? getFree,
    TResult? Function(List<ProductModel> product)? loaded,
    TResult? Function(ProductModel product)? detailLoaded,
    TResult? Function(List<ProductModel> product)? getExpired,
  }) {
    return loaded?.call(product);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(String? message)? error,
    TResult Function()? created,
    TResult Function()? delete,
    TResult Function(List<ProductModel> product)? getFree,
    TResult Function(List<ProductModel> product)? loaded,
    TResult Function(ProductModel product)? detailLoaded,
    TResult Function(List<ProductModel> product)? getExpired,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(product);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) init,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_Created value) created,
    required TResult Function(_Delete value) delete,
    required TResult Function(_GetFree value) getFree,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_DetailLoaded value) detailLoaded,
    required TResult Function(_GetExpired value) getExpired,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? init,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_Created value)? created,
    TResult? Function(_Delete value)? delete,
    TResult? Function(_GetFree value)? getFree,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_DetailLoaded value)? detailLoaded,
    TResult? Function(_GetExpired value)? getExpired,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? init,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_Created value)? created,
    TResult Function(_Delete value)? delete,
    TResult Function(_GetFree value)? getFree,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_DetailLoaded value)? detailLoaded,
    TResult Function(_GetExpired value)? getExpired,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements ProductState {
  const factory _Loaded(final List<ProductModel> product) = _$_Loaded;

  List<ProductModel> get product;
  @JsonKey(ignore: true)
  _$$_LoadedCopyWith<_$_Loaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_DetailLoadedCopyWith<$Res> {
  factory _$$_DetailLoadedCopyWith(
          _$_DetailLoaded value, $Res Function(_$_DetailLoaded) then) =
      __$$_DetailLoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({ProductModel product});

  $ProductModelCopyWith<$Res> get product;
}

/// @nodoc
class __$$_DetailLoadedCopyWithImpl<$Res>
    extends _$ProductStateCopyWithImpl<$Res, _$_DetailLoaded>
    implements _$$_DetailLoadedCopyWith<$Res> {
  __$$_DetailLoadedCopyWithImpl(
      _$_DetailLoaded _value, $Res Function(_$_DetailLoaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = null,
  }) {
    return _then(_$_DetailLoaded(
      null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as ProductModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ProductModelCopyWith<$Res> get product {
    return $ProductModelCopyWith<$Res>(_value.product, (value) {
      return _then(_value.copyWith(product: value));
    });
  }
}

/// @nodoc

class _$_DetailLoaded implements _DetailLoaded {
  const _$_DetailLoaded(this.product);

  @override
  final ProductModel product;

  @override
  String toString() {
    return 'ProductState.detailLoaded(product: $product)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DetailLoaded &&
            (identical(other.product, product) || other.product == product));
  }

  @override
  int get hashCode => Object.hash(runtimeType, product);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DetailLoadedCopyWith<_$_DetailLoaded> get copyWith =>
      __$$_DetailLoadedCopyWithImpl<_$_DetailLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() loading,
    required TResult Function(String? message) error,
    required TResult Function() created,
    required TResult Function() delete,
    required TResult Function(List<ProductModel> product) getFree,
    required TResult Function(List<ProductModel> product) loaded,
    required TResult Function(ProductModel product) detailLoaded,
    required TResult Function(List<ProductModel> product) getExpired,
  }) {
    return detailLoaded(product);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? loading,
    TResult? Function(String? message)? error,
    TResult? Function()? created,
    TResult? Function()? delete,
    TResult? Function(List<ProductModel> product)? getFree,
    TResult? Function(List<ProductModel> product)? loaded,
    TResult? Function(ProductModel product)? detailLoaded,
    TResult? Function(List<ProductModel> product)? getExpired,
  }) {
    return detailLoaded?.call(product);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(String? message)? error,
    TResult Function()? created,
    TResult Function()? delete,
    TResult Function(List<ProductModel> product)? getFree,
    TResult Function(List<ProductModel> product)? loaded,
    TResult Function(ProductModel product)? detailLoaded,
    TResult Function(List<ProductModel> product)? getExpired,
    required TResult orElse(),
  }) {
    if (detailLoaded != null) {
      return detailLoaded(product);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) init,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_Created value) created,
    required TResult Function(_Delete value) delete,
    required TResult Function(_GetFree value) getFree,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_DetailLoaded value) detailLoaded,
    required TResult Function(_GetExpired value) getExpired,
  }) {
    return detailLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? init,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_Created value)? created,
    TResult? Function(_Delete value)? delete,
    TResult? Function(_GetFree value)? getFree,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_DetailLoaded value)? detailLoaded,
    TResult? Function(_GetExpired value)? getExpired,
  }) {
    return detailLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? init,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_Created value)? created,
    TResult Function(_Delete value)? delete,
    TResult Function(_GetFree value)? getFree,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_DetailLoaded value)? detailLoaded,
    TResult Function(_GetExpired value)? getExpired,
    required TResult orElse(),
  }) {
    if (detailLoaded != null) {
      return detailLoaded(this);
    }
    return orElse();
  }
}

abstract class _DetailLoaded implements ProductState {
  const factory _DetailLoaded(final ProductModel product) = _$_DetailLoaded;

  ProductModel get product;
  @JsonKey(ignore: true)
  _$$_DetailLoadedCopyWith<_$_DetailLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_GetExpiredCopyWith<$Res> {
  factory _$$_GetExpiredCopyWith(
          _$_GetExpired value, $Res Function(_$_GetExpired) then) =
      __$$_GetExpiredCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ProductModel> product});
}

/// @nodoc
class __$$_GetExpiredCopyWithImpl<$Res>
    extends _$ProductStateCopyWithImpl<$Res, _$_GetExpired>
    implements _$$_GetExpiredCopyWith<$Res> {
  __$$_GetExpiredCopyWithImpl(
      _$_GetExpired _value, $Res Function(_$_GetExpired) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = null,
  }) {
    return _then(_$_GetExpired(
      null == product
          ? _value._product
          : product // ignore: cast_nullable_to_non_nullable
              as List<ProductModel>,
    ));
  }
}

/// @nodoc

class _$_GetExpired implements _GetExpired {
  const _$_GetExpired(final List<ProductModel> product) : _product = product;

  final List<ProductModel> _product;
  @override
  List<ProductModel> get product {
    if (_product is EqualUnmodifiableListView) return _product;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_product);
  }

  @override
  String toString() {
    return 'ProductState.getExpired(product: $product)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetExpired &&
            const DeepCollectionEquality().equals(other._product, _product));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_product));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetExpiredCopyWith<_$_GetExpired> get copyWith =>
      __$$_GetExpiredCopyWithImpl<_$_GetExpired>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() loading,
    required TResult Function(String? message) error,
    required TResult Function() created,
    required TResult Function() delete,
    required TResult Function(List<ProductModel> product) getFree,
    required TResult Function(List<ProductModel> product) loaded,
    required TResult Function(ProductModel product) detailLoaded,
    required TResult Function(List<ProductModel> product) getExpired,
  }) {
    return getExpired(product);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? loading,
    TResult? Function(String? message)? error,
    TResult? Function()? created,
    TResult? Function()? delete,
    TResult? Function(List<ProductModel> product)? getFree,
    TResult? Function(List<ProductModel> product)? loaded,
    TResult? Function(ProductModel product)? detailLoaded,
    TResult? Function(List<ProductModel> product)? getExpired,
  }) {
    return getExpired?.call(product);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(String? message)? error,
    TResult Function()? created,
    TResult Function()? delete,
    TResult Function(List<ProductModel> product)? getFree,
    TResult Function(List<ProductModel> product)? loaded,
    TResult Function(ProductModel product)? detailLoaded,
    TResult Function(List<ProductModel> product)? getExpired,
    required TResult orElse(),
  }) {
    if (getExpired != null) {
      return getExpired(product);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) init,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_Created value) created,
    required TResult Function(_Delete value) delete,
    required TResult Function(_GetFree value) getFree,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_DetailLoaded value) detailLoaded,
    required TResult Function(_GetExpired value) getExpired,
  }) {
    return getExpired(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? init,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_Created value)? created,
    TResult? Function(_Delete value)? delete,
    TResult? Function(_GetFree value)? getFree,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_DetailLoaded value)? detailLoaded,
    TResult? Function(_GetExpired value)? getExpired,
  }) {
    return getExpired?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? init,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_Created value)? created,
    TResult Function(_Delete value)? delete,
    TResult Function(_GetFree value)? getFree,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_DetailLoaded value)? detailLoaded,
    TResult Function(_GetExpired value)? getExpired,
    required TResult orElse(),
  }) {
    if (getExpired != null) {
      return getExpired(this);
    }
    return orElse();
  }
}

abstract class _GetExpired implements ProductState {
  const factory _GetExpired(final List<ProductModel> product) = _$_GetExpired;

  List<ProductModel> get product;
  @JsonKey(ignore: true)
  _$$_GetExpiredCopyWith<_$_GetExpired> get copyWith =>
      throw _privateConstructorUsedError;
}
