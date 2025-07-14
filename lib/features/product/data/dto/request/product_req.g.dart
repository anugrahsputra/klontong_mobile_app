// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_req.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ProductReq _$ProductReqFromJson(Map<String, dynamic> json) => _ProductReq(
  id: (json['id'] as num).toInt(),
  categoryId: (json['CategoryId'] as num).toInt(),
  categoryName: json['categoryName'] as String,
  sku: json['sku'] as String,
  name: json['name'] as String,
  description: json['description'] as String,
  weight: (json['weight'] as num).toInt(),
  width: (json['width'] as num).toInt(),
  length: (json['length'] as num).toInt(),
  height: (json['height'] as num).toInt(),
  image: json['image'] as String,
  harga: (json['harga'] as num).toInt(),
);

Map<String, dynamic> _$ProductReqToJson(_ProductReq instance) =>
    <String, dynamic>{
      'id': instance.id,
      'CategoryId': instance.categoryId,
      'categoryName': instance.categoryName,
      'sku': instance.sku,
      'name': instance.name,
      'description': instance.description,
      'weight': instance.weight,
      'width': instance.width,
      'length': instance.length,
      'height': instance.height,
      'image': instance.image,
      'harga': instance.harga,
    };
