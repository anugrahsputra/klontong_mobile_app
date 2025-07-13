// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ProductDto {

@JsonKey(name: '_id') String? get ids;@JsonKey(name: "id") int get id;@JsonKey(name: "CategoryId") int get categoryId;@JsonKey(name: "categoryName") String get categoryName;@JsonKey(name: "sku") String get sku;@JsonKey(name: "name") String get name;@JsonKey(name: "description") String get description;@JsonKey(name: "weight") int get weight;@JsonKey(name: "width") int get width;@JsonKey(name: "length") int get length;@JsonKey(name: "height") int get height;@JsonKey(name: "image") String get image;@JsonKey(name: "harga") int get harga;
/// Create a copy of ProductDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductDtoCopyWith<ProductDto> get copyWith => _$ProductDtoCopyWithImpl<ProductDto>(this as ProductDto, _$identity);

  /// Serializes this ProductDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductDto&&(identical(other.ids, ids) || other.ids == ids)&&(identical(other.id, id) || other.id == id)&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId)&&(identical(other.categoryName, categoryName) || other.categoryName == categoryName)&&(identical(other.sku, sku) || other.sku == sku)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.weight, weight) || other.weight == weight)&&(identical(other.width, width) || other.width == width)&&(identical(other.length, length) || other.length == length)&&(identical(other.height, height) || other.height == height)&&(identical(other.image, image) || other.image == image)&&(identical(other.harga, harga) || other.harga == harga));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,ids,id,categoryId,categoryName,sku,name,description,weight,width,length,height,image,harga);

@override
String toString() {
  return 'ProductDto(ids: $ids, id: $id, categoryId: $categoryId, categoryName: $categoryName, sku: $sku, name: $name, description: $description, weight: $weight, width: $width, length: $length, height: $height, image: $image, harga: $harga)';
}


}

/// @nodoc
abstract mixin class $ProductDtoCopyWith<$Res>  {
  factory $ProductDtoCopyWith(ProductDto value, $Res Function(ProductDto) _then) = _$ProductDtoCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: '_id') String? ids,@JsonKey(name: "id") int id,@JsonKey(name: "CategoryId") int categoryId,@JsonKey(name: "categoryName") String categoryName,@JsonKey(name: "sku") String sku,@JsonKey(name: "name") String name,@JsonKey(name: "description") String description,@JsonKey(name: "weight") int weight,@JsonKey(name: "width") int width,@JsonKey(name: "length") int length,@JsonKey(name: "height") int height,@JsonKey(name: "image") String image,@JsonKey(name: "harga") int harga
});




}
/// @nodoc
class _$ProductDtoCopyWithImpl<$Res>
    implements $ProductDtoCopyWith<$Res> {
  _$ProductDtoCopyWithImpl(this._self, this._then);

  final ProductDto _self;
  final $Res Function(ProductDto) _then;

/// Create a copy of ProductDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? ids = freezed,Object? id = null,Object? categoryId = null,Object? categoryName = null,Object? sku = null,Object? name = null,Object? description = null,Object? weight = null,Object? width = null,Object? length = null,Object? height = null,Object? image = null,Object? harga = null,}) {
  return _then(_self.copyWith(
ids: freezed == ids ? _self.ids : ids // ignore: cast_nullable_to_non_nullable
as String?,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,categoryId: null == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as int,categoryName: null == categoryName ? _self.categoryName : categoryName // ignore: cast_nullable_to_non_nullable
as String,sku: null == sku ? _self.sku : sku // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,weight: null == weight ? _self.weight : weight // ignore: cast_nullable_to_non_nullable
as int,width: null == width ? _self.width : width // ignore: cast_nullable_to_non_nullable
as int,length: null == length ? _self.length : length // ignore: cast_nullable_to_non_nullable
as int,height: null == height ? _self.height : height // ignore: cast_nullable_to_non_nullable
as int,image: null == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String,harga: null == harga ? _self.harga : harga // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// @nodoc

@JsonSerializable(explicitToJson: true)
class _ProductDto implements ProductDto {
  const _ProductDto({@JsonKey(name: '_id') this.ids, @JsonKey(name: "id") required this.id, @JsonKey(name: "CategoryId") required this.categoryId, @JsonKey(name: "categoryName") required this.categoryName, @JsonKey(name: "sku") required this.sku, @JsonKey(name: "name") required this.name, @JsonKey(name: "description") required this.description, @JsonKey(name: "weight") required this.weight, @JsonKey(name: "width") required this.width, @JsonKey(name: "length") required this.length, @JsonKey(name: "height") required this.height, @JsonKey(name: "image") required this.image, @JsonKey(name: "harga") required this.harga});
  factory _ProductDto.fromJson(Map<String, dynamic> json) => _$ProductDtoFromJson(json);

@override@JsonKey(name: '_id') final  String? ids;
@override@JsonKey(name: "id") final  int id;
@override@JsonKey(name: "CategoryId") final  int categoryId;
@override@JsonKey(name: "categoryName") final  String categoryName;
@override@JsonKey(name: "sku") final  String sku;
@override@JsonKey(name: "name") final  String name;
@override@JsonKey(name: "description") final  String description;
@override@JsonKey(name: "weight") final  int weight;
@override@JsonKey(name: "width") final  int width;
@override@JsonKey(name: "length") final  int length;
@override@JsonKey(name: "height") final  int height;
@override@JsonKey(name: "image") final  String image;
@override@JsonKey(name: "harga") final  int harga;

/// Create a copy of ProductDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductDtoCopyWith<_ProductDto> get copyWith => __$ProductDtoCopyWithImpl<_ProductDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProductDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProductDto&&(identical(other.ids, ids) || other.ids == ids)&&(identical(other.id, id) || other.id == id)&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId)&&(identical(other.categoryName, categoryName) || other.categoryName == categoryName)&&(identical(other.sku, sku) || other.sku == sku)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.weight, weight) || other.weight == weight)&&(identical(other.width, width) || other.width == width)&&(identical(other.length, length) || other.length == length)&&(identical(other.height, height) || other.height == height)&&(identical(other.image, image) || other.image == image)&&(identical(other.harga, harga) || other.harga == harga));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,ids,id,categoryId,categoryName,sku,name,description,weight,width,length,height,image,harga);

@override
String toString() {
  return 'ProductDto(ids: $ids, id: $id, categoryId: $categoryId, categoryName: $categoryName, sku: $sku, name: $name, description: $description, weight: $weight, width: $width, length: $length, height: $height, image: $image, harga: $harga)';
}


}

/// @nodoc
abstract mixin class _$ProductDtoCopyWith<$Res> implements $ProductDtoCopyWith<$Res> {
  factory _$ProductDtoCopyWith(_ProductDto value, $Res Function(_ProductDto) _then) = __$ProductDtoCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: '_id') String? ids,@JsonKey(name: "id") int id,@JsonKey(name: "CategoryId") int categoryId,@JsonKey(name: "categoryName") String categoryName,@JsonKey(name: "sku") String sku,@JsonKey(name: "name") String name,@JsonKey(name: "description") String description,@JsonKey(name: "weight") int weight,@JsonKey(name: "width") int width,@JsonKey(name: "length") int length,@JsonKey(name: "height") int height,@JsonKey(name: "image") String image,@JsonKey(name: "harga") int harga
});




}
/// @nodoc
class __$ProductDtoCopyWithImpl<$Res>
    implements _$ProductDtoCopyWith<$Res> {
  __$ProductDtoCopyWithImpl(this._self, this._then);

  final _ProductDto _self;
  final $Res Function(_ProductDto) _then;

/// Create a copy of ProductDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? ids = freezed,Object? id = null,Object? categoryId = null,Object? categoryName = null,Object? sku = null,Object? name = null,Object? description = null,Object? weight = null,Object? width = null,Object? length = null,Object? height = null,Object? image = null,Object? harga = null,}) {
  return _then(_ProductDto(
ids: freezed == ids ? _self.ids : ids // ignore: cast_nullable_to_non_nullable
as String?,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,categoryId: null == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as int,categoryName: null == categoryName ? _self.categoryName : categoryName // ignore: cast_nullable_to_non_nullable
as String,sku: null == sku ? _self.sku : sku // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,weight: null == weight ? _self.weight : weight // ignore: cast_nullable_to_non_nullable
as int,width: null == width ? _self.width : width // ignore: cast_nullable_to_non_nullable
as int,length: null == length ? _self.length : length // ignore: cast_nullable_to_non_nullable
as int,height: null == height ? _self.height : height // ignore: cast_nullable_to_non_nullable
as int,image: null == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String,harga: null == harga ? _self.harga : harga // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
