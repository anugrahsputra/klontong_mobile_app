// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ProductDto _$ProductDtoFromJson(Map<String, dynamic> json) => _ProductDto(
  id: json['_id'] as String?,
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

Map<String, dynamic> _$ProductDtoToJson(_ProductDto instance) =>
    <String, dynamic>{
      '_id': instance.id,
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
