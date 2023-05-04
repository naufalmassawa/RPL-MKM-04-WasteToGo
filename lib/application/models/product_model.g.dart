// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProductModelList _$$_ProductModelListFromJson(Map<String, dynamic> json) =>
    _$_ProductModelList(
      listProduct: (json['listProduct'] as List<dynamic>)
          .map((e) => ProductModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ProductModelListToJson(_$_ProductModelList instance) =>
    <String, dynamic>{
      'listProduct': instance.listProduct,
    };

_$_ProductModel _$$_ProductModelFromJson(Map<String, dynamic> json) =>
    _$_ProductModel(
      id: json['id'] as String?,
      imgUrl: json['imgUrl'] as String?,
      name: json['name'] as String?,
      desc: json['desc'] as String?,
      date: json['date'] as String?,
      lat: (json['lat'] as num?)?.toDouble(),
      long: (json['long'] as num?)?.toDouble(),
      price: json['price'] as num?,
      userId: json['userId'] as String?,
    );

Map<String, dynamic> _$$_ProductModelToJson(_$_ProductModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'imgUrl': instance.imgUrl,
      'name': instance.name,
      'desc': instance.desc,
      'date': instance.date,
      'lat': instance.lat,
      'long': instance.long,
      'price': instance.price,
      'userId': instance.userId,
    };
