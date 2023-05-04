import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_model.freezed.dart';
part 'product_model.g.dart';

@freezed
abstract class ProductModelList with _$ProductModelList {
  const factory ProductModelList({required List<ProductModel> listProduct}) =
      _ProductModelList;

  factory ProductModelList.fromJson(Map<String, dynamic> json) =>
      _$ProductModelListFromJson(json);
}

@freezed
abstract class ProductModel with _$ProductModel {
  const factory ProductModel({
    String? id,
    String? imgUrl,
    String? name,
    String? desc,
    String? date,
    double? lat,
    double? long,
    num? price,
    String? userId,
  }) = _ProductModel;

  factory ProductModel.fromJson(Map<String, dynamic> json) =>
      _$ProductModelFromJson(json);
}
