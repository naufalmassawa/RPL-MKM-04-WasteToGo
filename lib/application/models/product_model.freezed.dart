// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProductModelList _$ProductModelListFromJson(Map<String, dynamic> json) {
  return _ProductModelList.fromJson(json);
}

/// @nodoc
mixin _$ProductModelList {
  List<ProductModel> get listProduct => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductModelListCopyWith<ProductModelList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductModelListCopyWith<$Res> {
  factory $ProductModelListCopyWith(
          ProductModelList value, $Res Function(ProductModelList) then) =
      _$ProductModelListCopyWithImpl<$Res, ProductModelList>;
  @useResult
  $Res call({List<ProductModel> listProduct});
}

/// @nodoc
class _$ProductModelListCopyWithImpl<$Res, $Val extends ProductModelList>
    implements $ProductModelListCopyWith<$Res> {
  _$ProductModelListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? listProduct = null,
  }) {
    return _then(_value.copyWith(
      listProduct: null == listProduct
          ? _value.listProduct
          : listProduct // ignore: cast_nullable_to_non_nullable
              as List<ProductModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ProductModelListCopyWith<$Res>
    implements $ProductModelListCopyWith<$Res> {
  factory _$$_ProductModelListCopyWith(
          _$_ProductModelList value, $Res Function(_$_ProductModelList) then) =
      __$$_ProductModelListCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ProductModel> listProduct});
}

/// @nodoc
class __$$_ProductModelListCopyWithImpl<$Res>
    extends _$ProductModelListCopyWithImpl<$Res, _$_ProductModelList>
    implements _$$_ProductModelListCopyWith<$Res> {
  __$$_ProductModelListCopyWithImpl(
      _$_ProductModelList _value, $Res Function(_$_ProductModelList) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? listProduct = null,
  }) {
    return _then(_$_ProductModelList(
      listProduct: null == listProduct
          ? _value._listProduct
          : listProduct // ignore: cast_nullable_to_non_nullable
              as List<ProductModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProductModelList implements _ProductModelList {
  const _$_ProductModelList({required final List<ProductModel> listProduct})
      : _listProduct = listProduct;

  factory _$_ProductModelList.fromJson(Map<String, dynamic> json) =>
      _$$_ProductModelListFromJson(json);

  final List<ProductModel> _listProduct;
  @override
  List<ProductModel> get listProduct {
    if (_listProduct is EqualUnmodifiableListView) return _listProduct;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_listProduct);
  }

  @override
  String toString() {
    return 'ProductModelList(listProduct: $listProduct)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProductModelList &&
            const DeepCollectionEquality()
                .equals(other._listProduct, _listProduct));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_listProduct));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProductModelListCopyWith<_$_ProductModelList> get copyWith =>
      __$$_ProductModelListCopyWithImpl<_$_ProductModelList>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProductModelListToJson(
      this,
    );
  }
}

abstract class _ProductModelList implements ProductModelList {
  const factory _ProductModelList(
      {required final List<ProductModel> listProduct}) = _$_ProductModelList;

  factory _ProductModelList.fromJson(Map<String, dynamic> json) =
      _$_ProductModelList.fromJson;

  @override
  List<ProductModel> get listProduct;
  @override
  @JsonKey(ignore: true)
  _$$_ProductModelListCopyWith<_$_ProductModelList> get copyWith =>
      throw _privateConstructorUsedError;
}

ProductModel _$ProductModelFromJson(Map<String, dynamic> json) {
  return _ProductModel.fromJson(json);
}

/// @nodoc
mixin _$ProductModel {
  String? get id => throw _privateConstructorUsedError;
  String? get imageUrl => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get desc => throw _privateConstructorUsedError;
  String? get date => throw _privateConstructorUsedError;
  double? get lat => throw _privateConstructorUsedError;
  double? get long => throw _privateConstructorUsedError;
  num? get price => throw _privateConstructorUsedError;
  String? get userId => throw _privateConstructorUsedError;
  String? get expired => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductModelCopyWith<ProductModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductModelCopyWith<$Res> {
  factory $ProductModelCopyWith(
          ProductModel value, $Res Function(ProductModel) then) =
      _$ProductModelCopyWithImpl<$Res, ProductModel>;
  @useResult
  $Res call(
      {String? id,
      String? imageUrl,
      String? name,
      String? desc,
      String? date,
      double? lat,
      double? long,
      num? price,
      String? userId,
      String? expired});
}

/// @nodoc
class _$ProductModelCopyWithImpl<$Res, $Val extends ProductModel>
    implements $ProductModelCopyWith<$Res> {
  _$ProductModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? imageUrl = freezed,
    Object? name = freezed,
    Object? desc = freezed,
    Object? date = freezed,
    Object? lat = freezed,
    Object? long = freezed,
    Object? price = freezed,
    Object? userId = freezed,
    Object? expired = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      desc: freezed == desc
          ? _value.desc
          : desc // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      lat: freezed == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double?,
      long: freezed == long
          ? _value.long
          : long // ignore: cast_nullable_to_non_nullable
              as double?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as num?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      expired: freezed == expired
          ? _value.expired
          : expired // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ProductModelCopyWith<$Res>
    implements $ProductModelCopyWith<$Res> {
  factory _$$_ProductModelCopyWith(
          _$_ProductModel value, $Res Function(_$_ProductModel) then) =
      __$$_ProductModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? imageUrl,
      String? name,
      String? desc,
      String? date,
      double? lat,
      double? long,
      num? price,
      String? userId,
      String? expired});
}

/// @nodoc
class __$$_ProductModelCopyWithImpl<$Res>
    extends _$ProductModelCopyWithImpl<$Res, _$_ProductModel>
    implements _$$_ProductModelCopyWith<$Res> {
  __$$_ProductModelCopyWithImpl(
      _$_ProductModel _value, $Res Function(_$_ProductModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? imageUrl = freezed,
    Object? name = freezed,
    Object? desc = freezed,
    Object? date = freezed,
    Object? lat = freezed,
    Object? long = freezed,
    Object? price = freezed,
    Object? userId = freezed,
    Object? expired = freezed,
  }) {
    return _then(_$_ProductModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      desc: freezed == desc
          ? _value.desc
          : desc // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      lat: freezed == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double?,
      long: freezed == long
          ? _value.long
          : long // ignore: cast_nullable_to_non_nullable
              as double?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as num?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      expired: freezed == expired
          ? _value.expired
          : expired // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProductModel implements _ProductModel {
  const _$_ProductModel(
      {this.id,
      this.imageUrl,
      this.name,
      this.desc,
      this.date,
      this.lat,
      this.long,
      this.price,
      this.userId,
      this.expired});

  factory _$_ProductModel.fromJson(Map<String, dynamic> json) =>
      _$$_ProductModelFromJson(json);

  @override
  final String? id;
  @override
  final String? imageUrl;
  @override
  final String? name;
  @override
  final String? desc;
  @override
  final String? date;
  @override
  final double? lat;
  @override
  final double? long;
  @override
  final num? price;
  @override
  final String? userId;
  @override
  final String? expired;

  @override
  String toString() {
    return 'ProductModel(id: $id, imageUrl: $imageUrl, name: $name, desc: $desc, date: $date, lat: $lat, long: $long, price: $price, userId: $userId, expired: $expired)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProductModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.desc, desc) || other.desc == desc) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.long, long) || other.long == long) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.expired, expired) || other.expired == expired));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, imageUrl, name, desc, date,
      lat, long, price, userId, expired);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProductModelCopyWith<_$_ProductModel> get copyWith =>
      __$$_ProductModelCopyWithImpl<_$_ProductModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProductModelToJson(
      this,
    );
  }
}

abstract class _ProductModel implements ProductModel {
  const factory _ProductModel(
      {final String? id,
      final String? imageUrl,
      final String? name,
      final String? desc,
      final String? date,
      final double? lat,
      final double? long,
      final num? price,
      final String? userId,
      final String? expired}) = _$_ProductModel;

  factory _ProductModel.fromJson(Map<String, dynamic> json) =
      _$_ProductModel.fromJson;

  @override
  String? get id;
  @override
  String? get imageUrl;
  @override
  String? get name;
  @override
  String? get desc;
  @override
  String? get date;
  @override
  double? get lat;
  @override
  double? get long;
  @override
  num? get price;
  @override
  String? get userId;
  @override
  String? get expired;
  @override
  @JsonKey(ignore: true)
  _$$_ProductModelCopyWith<_$_ProductModel> get copyWith =>
      throw _privateConstructorUsedError;
}
