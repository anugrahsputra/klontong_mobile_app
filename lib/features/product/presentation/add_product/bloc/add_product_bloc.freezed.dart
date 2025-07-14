// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_product_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AddProductEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddProductEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AddProductEvent()';
}


}

/// @nodoc
class $AddProductEventCopyWith<$Res>  {
$AddProductEventCopyWith(AddProductEvent _, $Res Function(AddProductEvent) __);
}


/// @nodoc


class OnNameChanged implements AddProductEvent {
  const OnNameChanged(this.name);
  

 final  String name;

/// Create a copy of AddProductEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OnNameChangedCopyWith<OnNameChanged> get copyWith => _$OnNameChangedCopyWithImpl<OnNameChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OnNameChanged&&(identical(other.name, name) || other.name == name));
}


@override
int get hashCode => Object.hash(runtimeType,name);

@override
String toString() {
  return 'AddProductEvent.onNameChanged(name: $name)';
}


}

/// @nodoc
abstract mixin class $OnNameChangedCopyWith<$Res> implements $AddProductEventCopyWith<$Res> {
  factory $OnNameChangedCopyWith(OnNameChanged value, $Res Function(OnNameChanged) _then) = _$OnNameChangedCopyWithImpl;
@useResult
$Res call({
 String name
});




}
/// @nodoc
class _$OnNameChangedCopyWithImpl<$Res>
    implements $OnNameChangedCopyWith<$Res> {
  _$OnNameChangedCopyWithImpl(this._self, this._then);

  final OnNameChanged _self;
  final $Res Function(OnNameChanged) _then;

/// Create a copy of AddProductEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? name = null,}) {
  return _then(OnNameChanged(
null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class OnCategoryNameChanged implements AddProductEvent {
  const OnCategoryNameChanged(this.categoryName);
  

 final  String categoryName;

/// Create a copy of AddProductEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OnCategoryNameChangedCopyWith<OnCategoryNameChanged> get copyWith => _$OnCategoryNameChangedCopyWithImpl<OnCategoryNameChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OnCategoryNameChanged&&(identical(other.categoryName, categoryName) || other.categoryName == categoryName));
}


@override
int get hashCode => Object.hash(runtimeType,categoryName);

@override
String toString() {
  return 'AddProductEvent.onCategoryNameChanged(categoryName: $categoryName)';
}


}

/// @nodoc
abstract mixin class $OnCategoryNameChangedCopyWith<$Res> implements $AddProductEventCopyWith<$Res> {
  factory $OnCategoryNameChangedCopyWith(OnCategoryNameChanged value, $Res Function(OnCategoryNameChanged) _then) = _$OnCategoryNameChangedCopyWithImpl;
@useResult
$Res call({
 String categoryName
});




}
/// @nodoc
class _$OnCategoryNameChangedCopyWithImpl<$Res>
    implements $OnCategoryNameChangedCopyWith<$Res> {
  _$OnCategoryNameChangedCopyWithImpl(this._self, this._then);

  final OnCategoryNameChanged _self;
  final $Res Function(OnCategoryNameChanged) _then;

/// Create a copy of AddProductEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? categoryName = null,}) {
  return _then(OnCategoryNameChanged(
null == categoryName ? _self.categoryName : categoryName // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class OnCategoryIdChanged implements AddProductEvent {
  const OnCategoryIdChanged(this.categoryId);
  

 final  int categoryId;

/// Create a copy of AddProductEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OnCategoryIdChangedCopyWith<OnCategoryIdChanged> get copyWith => _$OnCategoryIdChangedCopyWithImpl<OnCategoryIdChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OnCategoryIdChanged&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId));
}


@override
int get hashCode => Object.hash(runtimeType,categoryId);

@override
String toString() {
  return 'AddProductEvent.onCategoryIdChanged(categoryId: $categoryId)';
}


}

/// @nodoc
abstract mixin class $OnCategoryIdChangedCopyWith<$Res> implements $AddProductEventCopyWith<$Res> {
  factory $OnCategoryIdChangedCopyWith(OnCategoryIdChanged value, $Res Function(OnCategoryIdChanged) _then) = _$OnCategoryIdChangedCopyWithImpl;
@useResult
$Res call({
 int categoryId
});




}
/// @nodoc
class _$OnCategoryIdChangedCopyWithImpl<$Res>
    implements $OnCategoryIdChangedCopyWith<$Res> {
  _$OnCategoryIdChangedCopyWithImpl(this._self, this._then);

  final OnCategoryIdChanged _self;
  final $Res Function(OnCategoryIdChanged) _then;

/// Create a copy of AddProductEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? categoryId = null,}) {
  return _then(OnCategoryIdChanged(
null == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class OnDescriptionChanged implements AddProductEvent {
  const OnDescriptionChanged(this.description);
  

 final  String description;

/// Create a copy of AddProductEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OnDescriptionChangedCopyWith<OnDescriptionChanged> get copyWith => _$OnDescriptionChangedCopyWithImpl<OnDescriptionChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OnDescriptionChanged&&(identical(other.description, description) || other.description == description));
}


@override
int get hashCode => Object.hash(runtimeType,description);

@override
String toString() {
  return 'AddProductEvent.onDescriptionChanged(description: $description)';
}


}

/// @nodoc
abstract mixin class $OnDescriptionChangedCopyWith<$Res> implements $AddProductEventCopyWith<$Res> {
  factory $OnDescriptionChangedCopyWith(OnDescriptionChanged value, $Res Function(OnDescriptionChanged) _then) = _$OnDescriptionChangedCopyWithImpl;
@useResult
$Res call({
 String description
});




}
/// @nodoc
class _$OnDescriptionChangedCopyWithImpl<$Res>
    implements $OnDescriptionChangedCopyWith<$Res> {
  _$OnDescriptionChangedCopyWithImpl(this._self, this._then);

  final OnDescriptionChanged _self;
  final $Res Function(OnDescriptionChanged) _then;

/// Create a copy of AddProductEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? description = null,}) {
  return _then(OnDescriptionChanged(
null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class OnWeightChanged implements AddProductEvent {
  const OnWeightChanged(this.weight);
  

 final  int weight;

/// Create a copy of AddProductEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OnWeightChangedCopyWith<OnWeightChanged> get copyWith => _$OnWeightChangedCopyWithImpl<OnWeightChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OnWeightChanged&&(identical(other.weight, weight) || other.weight == weight));
}


@override
int get hashCode => Object.hash(runtimeType,weight);

@override
String toString() {
  return 'AddProductEvent.onWeightChanged(weight: $weight)';
}


}

/// @nodoc
abstract mixin class $OnWeightChangedCopyWith<$Res> implements $AddProductEventCopyWith<$Res> {
  factory $OnWeightChangedCopyWith(OnWeightChanged value, $Res Function(OnWeightChanged) _then) = _$OnWeightChangedCopyWithImpl;
@useResult
$Res call({
 int weight
});




}
/// @nodoc
class _$OnWeightChangedCopyWithImpl<$Res>
    implements $OnWeightChangedCopyWith<$Res> {
  _$OnWeightChangedCopyWithImpl(this._self, this._then);

  final OnWeightChanged _self;
  final $Res Function(OnWeightChanged) _then;

/// Create a copy of AddProductEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? weight = null,}) {
  return _then(OnWeightChanged(
null == weight ? _self.weight : weight // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class OnWidthChanged implements AddProductEvent {
  const OnWidthChanged(this.width);
  

 final  int width;

/// Create a copy of AddProductEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OnWidthChangedCopyWith<OnWidthChanged> get copyWith => _$OnWidthChangedCopyWithImpl<OnWidthChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OnWidthChanged&&(identical(other.width, width) || other.width == width));
}


@override
int get hashCode => Object.hash(runtimeType,width);

@override
String toString() {
  return 'AddProductEvent.onWidthChanged(width: $width)';
}


}

/// @nodoc
abstract mixin class $OnWidthChangedCopyWith<$Res> implements $AddProductEventCopyWith<$Res> {
  factory $OnWidthChangedCopyWith(OnWidthChanged value, $Res Function(OnWidthChanged) _then) = _$OnWidthChangedCopyWithImpl;
@useResult
$Res call({
 int width
});




}
/// @nodoc
class _$OnWidthChangedCopyWithImpl<$Res>
    implements $OnWidthChangedCopyWith<$Res> {
  _$OnWidthChangedCopyWithImpl(this._self, this._then);

  final OnWidthChanged _self;
  final $Res Function(OnWidthChanged) _then;

/// Create a copy of AddProductEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? width = null,}) {
  return _then(OnWidthChanged(
null == width ? _self.width : width // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class OnLengthChanged implements AddProductEvent {
  const OnLengthChanged(this.length);
  

 final  int length;

/// Create a copy of AddProductEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OnLengthChangedCopyWith<OnLengthChanged> get copyWith => _$OnLengthChangedCopyWithImpl<OnLengthChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OnLengthChanged&&(identical(other.length, length) || other.length == length));
}


@override
int get hashCode => Object.hash(runtimeType,length);

@override
String toString() {
  return 'AddProductEvent.onLengthChanged(length: $length)';
}


}

/// @nodoc
abstract mixin class $OnLengthChangedCopyWith<$Res> implements $AddProductEventCopyWith<$Res> {
  factory $OnLengthChangedCopyWith(OnLengthChanged value, $Res Function(OnLengthChanged) _then) = _$OnLengthChangedCopyWithImpl;
@useResult
$Res call({
 int length
});




}
/// @nodoc
class _$OnLengthChangedCopyWithImpl<$Res>
    implements $OnLengthChangedCopyWith<$Res> {
  _$OnLengthChangedCopyWithImpl(this._self, this._then);

  final OnLengthChanged _self;
  final $Res Function(OnLengthChanged) _then;

/// Create a copy of AddProductEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? length = null,}) {
  return _then(OnLengthChanged(
null == length ? _self.length : length // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class OnHeightChanged implements AddProductEvent {
  const OnHeightChanged(this.height);
  

 final  int height;

/// Create a copy of AddProductEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OnHeightChangedCopyWith<OnHeightChanged> get copyWith => _$OnHeightChangedCopyWithImpl<OnHeightChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OnHeightChanged&&(identical(other.height, height) || other.height == height));
}


@override
int get hashCode => Object.hash(runtimeType,height);

@override
String toString() {
  return 'AddProductEvent.onHeightChanged(height: $height)';
}


}

/// @nodoc
abstract mixin class $OnHeightChangedCopyWith<$Res> implements $AddProductEventCopyWith<$Res> {
  factory $OnHeightChangedCopyWith(OnHeightChanged value, $Res Function(OnHeightChanged) _then) = _$OnHeightChangedCopyWithImpl;
@useResult
$Res call({
 int height
});




}
/// @nodoc
class _$OnHeightChangedCopyWithImpl<$Res>
    implements $OnHeightChangedCopyWith<$Res> {
  _$OnHeightChangedCopyWithImpl(this._self, this._then);

  final OnHeightChanged _self;
  final $Res Function(OnHeightChanged) _then;

/// Create a copy of AddProductEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? height = null,}) {
  return _then(OnHeightChanged(
null == height ? _self.height : height // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class OnHargaChanged implements AddProductEvent {
  const OnHargaChanged(this.harga);
  

 final  int harga;

/// Create a copy of AddProductEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OnHargaChangedCopyWith<OnHargaChanged> get copyWith => _$OnHargaChangedCopyWithImpl<OnHargaChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OnHargaChanged&&(identical(other.harga, harga) || other.harga == harga));
}


@override
int get hashCode => Object.hash(runtimeType,harga);

@override
String toString() {
  return 'AddProductEvent.onHargaChanged(harga: $harga)';
}


}

/// @nodoc
abstract mixin class $OnHargaChangedCopyWith<$Res> implements $AddProductEventCopyWith<$Res> {
  factory $OnHargaChangedCopyWith(OnHargaChanged value, $Res Function(OnHargaChanged) _then) = _$OnHargaChangedCopyWithImpl;
@useResult
$Res call({
 int harga
});




}
/// @nodoc
class _$OnHargaChangedCopyWithImpl<$Res>
    implements $OnHargaChangedCopyWith<$Res> {
  _$OnHargaChangedCopyWithImpl(this._self, this._then);

  final OnHargaChanged _self;
  final $Res Function(OnHargaChanged) _then;

/// Create a copy of AddProductEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? harga = null,}) {
  return _then(OnHargaChanged(
null == harga ? _self.harga : harga // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class OnImageUrlChanged implements AddProductEvent {
  const OnImageUrlChanged(this.imageUrl);
  

 final  String imageUrl;

/// Create a copy of AddProductEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OnImageUrlChangedCopyWith<OnImageUrlChanged> get copyWith => _$OnImageUrlChangedCopyWithImpl<OnImageUrlChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OnImageUrlChanged&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl));
}


@override
int get hashCode => Object.hash(runtimeType,imageUrl);

@override
String toString() {
  return 'AddProductEvent.onImageUrlChanged(imageUrl: $imageUrl)';
}


}

/// @nodoc
abstract mixin class $OnImageUrlChangedCopyWith<$Res> implements $AddProductEventCopyWith<$Res> {
  factory $OnImageUrlChangedCopyWith(OnImageUrlChanged value, $Res Function(OnImageUrlChanged) _then) = _$OnImageUrlChangedCopyWithImpl;
@useResult
$Res call({
 String imageUrl
});




}
/// @nodoc
class _$OnImageUrlChangedCopyWithImpl<$Res>
    implements $OnImageUrlChangedCopyWith<$Res> {
  _$OnImageUrlChangedCopyWithImpl(this._self, this._then);

  final OnImageUrlChanged _self;
  final $Res Function(OnImageUrlChanged) _then;

/// Create a copy of AddProductEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? imageUrl = null,}) {
  return _then(OnImageUrlChanged(
null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class SubmitProduct implements AddProductEvent {
  const SubmitProduct();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SubmitProduct);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AddProductEvent.submit()';
}


}




/// @nodoc
mixin _$AddProductState {

 String get name; String get categoryName; int get categoryId; String get description; int get weight; int get width; int get length; int get height; int get harga; String get imageUrl; bool get isLoading; bool get hasSubmitted; String? get errorMessage;
/// Create a copy of AddProductState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AddProductStateCopyWith<AddProductState> get copyWith => _$AddProductStateCopyWithImpl<AddProductState>(this as AddProductState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddProductState&&(identical(other.name, name) || other.name == name)&&(identical(other.categoryName, categoryName) || other.categoryName == categoryName)&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId)&&(identical(other.description, description) || other.description == description)&&(identical(other.weight, weight) || other.weight == weight)&&(identical(other.width, width) || other.width == width)&&(identical(other.length, length) || other.length == length)&&(identical(other.height, height) || other.height == height)&&(identical(other.harga, harga) || other.harga == harga)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.hasSubmitted, hasSubmitted) || other.hasSubmitted == hasSubmitted)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,name,categoryName,categoryId,description,weight,width,length,height,harga,imageUrl,isLoading,hasSubmitted,errorMessage);

@override
String toString() {
  return 'AddProductState(name: $name, categoryName: $categoryName, categoryId: $categoryId, description: $description, weight: $weight, width: $width, length: $length, height: $height, harga: $harga, imageUrl: $imageUrl, isLoading: $isLoading, hasSubmitted: $hasSubmitted, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class $AddProductStateCopyWith<$Res>  {
  factory $AddProductStateCopyWith(AddProductState value, $Res Function(AddProductState) _then) = _$AddProductStateCopyWithImpl;
@useResult
$Res call({
 String name, String categoryName, int categoryId, String description, int weight, int width, int length, int height, int harga, String imageUrl, bool isLoading, bool hasSubmitted, String? errorMessage
});




}
/// @nodoc
class _$AddProductStateCopyWithImpl<$Res>
    implements $AddProductStateCopyWith<$Res> {
  _$AddProductStateCopyWithImpl(this._self, this._then);

  final AddProductState _self;
  final $Res Function(AddProductState) _then;

/// Create a copy of AddProductState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? categoryName = null,Object? categoryId = null,Object? description = null,Object? weight = null,Object? width = null,Object? length = null,Object? height = null,Object? harga = null,Object? imageUrl = null,Object? isLoading = null,Object? hasSubmitted = null,Object? errorMessage = freezed,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,categoryName: null == categoryName ? _self.categoryName : categoryName // ignore: cast_nullable_to_non_nullable
as String,categoryId: null == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as int,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,weight: null == weight ? _self.weight : weight // ignore: cast_nullable_to_non_nullable
as int,width: null == width ? _self.width : width // ignore: cast_nullable_to_non_nullable
as int,length: null == length ? _self.length : length // ignore: cast_nullable_to_non_nullable
as int,height: null == height ? _self.height : height // ignore: cast_nullable_to_non_nullable
as int,harga: null == harga ? _self.harga : harga // ignore: cast_nullable_to_non_nullable
as int,imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,hasSubmitted: null == hasSubmitted ? _self.hasSubmitted : hasSubmitted // ignore: cast_nullable_to_non_nullable
as bool,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// @nodoc


class _AddProductState implements AddProductState {
  const _AddProductState({this.name = '', this.categoryName = '', this.categoryId = 0, this.description = '', this.weight = 0, this.width = 0, this.length = 0, this.height = 0, this.harga = 0, this.imageUrl = '', this.isLoading = false, this.hasSubmitted = false, this.errorMessage});
  

@override@JsonKey() final  String name;
@override@JsonKey() final  String categoryName;
@override@JsonKey() final  int categoryId;
@override@JsonKey() final  String description;
@override@JsonKey() final  int weight;
@override@JsonKey() final  int width;
@override@JsonKey() final  int length;
@override@JsonKey() final  int height;
@override@JsonKey() final  int harga;
@override@JsonKey() final  String imageUrl;
@override@JsonKey() final  bool isLoading;
@override@JsonKey() final  bool hasSubmitted;
@override final  String? errorMessage;

/// Create a copy of AddProductState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AddProductStateCopyWith<_AddProductState> get copyWith => __$AddProductStateCopyWithImpl<_AddProductState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AddProductState&&(identical(other.name, name) || other.name == name)&&(identical(other.categoryName, categoryName) || other.categoryName == categoryName)&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId)&&(identical(other.description, description) || other.description == description)&&(identical(other.weight, weight) || other.weight == weight)&&(identical(other.width, width) || other.width == width)&&(identical(other.length, length) || other.length == length)&&(identical(other.height, height) || other.height == height)&&(identical(other.harga, harga) || other.harga == harga)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.hasSubmitted, hasSubmitted) || other.hasSubmitted == hasSubmitted)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,name,categoryName,categoryId,description,weight,width,length,height,harga,imageUrl,isLoading,hasSubmitted,errorMessage);

@override
String toString() {
  return 'AddProductState(name: $name, categoryName: $categoryName, categoryId: $categoryId, description: $description, weight: $weight, width: $width, length: $length, height: $height, harga: $harga, imageUrl: $imageUrl, isLoading: $isLoading, hasSubmitted: $hasSubmitted, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class _$AddProductStateCopyWith<$Res> implements $AddProductStateCopyWith<$Res> {
  factory _$AddProductStateCopyWith(_AddProductState value, $Res Function(_AddProductState) _then) = __$AddProductStateCopyWithImpl;
@override @useResult
$Res call({
 String name, String categoryName, int categoryId, String description, int weight, int width, int length, int height, int harga, String imageUrl, bool isLoading, bool hasSubmitted, String? errorMessage
});




}
/// @nodoc
class __$AddProductStateCopyWithImpl<$Res>
    implements _$AddProductStateCopyWith<$Res> {
  __$AddProductStateCopyWithImpl(this._self, this._then);

  final _AddProductState _self;
  final $Res Function(_AddProductState) _then;

/// Create a copy of AddProductState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? categoryName = null,Object? categoryId = null,Object? description = null,Object? weight = null,Object? width = null,Object? length = null,Object? height = null,Object? harga = null,Object? imageUrl = null,Object? isLoading = null,Object? hasSubmitted = null,Object? errorMessage = freezed,}) {
  return _then(_AddProductState(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,categoryName: null == categoryName ? _self.categoryName : categoryName // ignore: cast_nullable_to_non_nullable
as String,categoryId: null == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as int,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,weight: null == weight ? _self.weight : weight // ignore: cast_nullable_to_non_nullable
as int,width: null == width ? _self.width : width // ignore: cast_nullable_to_non_nullable
as int,length: null == length ? _self.length : length // ignore: cast_nullable_to_non_nullable
as int,height: null == height ? _self.height : height // ignore: cast_nullable_to_non_nullable
as int,harga: null == harga ? _self.harga : harga // ignore: cast_nullable_to_non_nullable
as int,imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,hasSubmitted: null == hasSubmitted ? _self.hasSubmitted : hasSubmitted // ignore: cast_nullable_to_non_nullable
as bool,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
