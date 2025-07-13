import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_dto.freezed.dart';

part 'product_dto.g.dart';

@freezed
abstract class ProductDto with _$ProductDto {
  @JsonSerializable(explicitToJson: true)
  const factory ProductDto({
    @JsonKey(name: '_id') String? ids,
    @JsonKey(name: "id") required int id,
    @JsonKey(name: "CategoryId") required int categoryId,
    @JsonKey(name: "categoryName") required String categoryName,
    @JsonKey(name: "sku") required String sku,
    @JsonKey(name: "name") required String name,
    @JsonKey(name: "description") required String description,
    @JsonKey(name: "weight") required int weight,
    @JsonKey(name: "width") required int width,
    @JsonKey(name: "length") required int length,
    @JsonKey(name: "height") required int height,
    @JsonKey(name: "image") required String image,
    @JsonKey(name: "harga") required int harga,
  }) = _ProductDto;

  factory ProductDto.fromJson(Map<String, dynamic> json) => _$ProductDtoFromJson(json);
}