// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'products_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ProductsState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductsState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProductsState()';
}


}

/// @nodoc
class $ProductsStateCopyWith<$Res>  {
$ProductsStateCopyWith(ProductsState _, $Res Function(ProductsState) __);
}


/// @nodoc


class ProductsInitial implements ProductsState {
  const ProductsInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductsInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProductsState.initial()';
}


}




/// @nodoc


class ProductsLoading implements ProductsState {
  const ProductsLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductsLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProductsState.loading()';
}


}




/// @nodoc


class ProductsLoaded implements ProductsState {
  const ProductsLoaded(final  List<Product> products, this.pageKey): _products = products;
  

 final  List<Product> _products;
 List<Product> get products {
  if (_products is EqualUnmodifiableListView) return _products;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_products);
}

 final  int pageKey;

/// Create a copy of ProductsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductsLoadedCopyWith<ProductsLoaded> get copyWith => _$ProductsLoadedCopyWithImpl<ProductsLoaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductsLoaded&&const DeepCollectionEquality().equals(other._products, _products)&&(identical(other.pageKey, pageKey) || other.pageKey == pageKey));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_products),pageKey);

@override
String toString() {
  return 'ProductsState.loaded(products: $products, pageKey: $pageKey)';
}


}

/// @nodoc
abstract mixin class $ProductsLoadedCopyWith<$Res> implements $ProductsStateCopyWith<$Res> {
  factory $ProductsLoadedCopyWith(ProductsLoaded value, $Res Function(ProductsLoaded) _then) = _$ProductsLoadedCopyWithImpl;
@useResult
$Res call({
 List<Product> products, int pageKey
});




}
/// @nodoc
class _$ProductsLoadedCopyWithImpl<$Res>
    implements $ProductsLoadedCopyWith<$Res> {
  _$ProductsLoadedCopyWithImpl(this._self, this._then);

  final ProductsLoaded _self;
  final $Res Function(ProductsLoaded) _then;

/// Create a copy of ProductsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? products = null,Object? pageKey = null,}) {
  return _then(ProductsLoaded(
null == products ? _self._products : products // ignore: cast_nullable_to_non_nullable
as List<Product>,null == pageKey ? _self.pageKey : pageKey // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class ProductsDetailLoaded implements ProductsState {
  const ProductsDetailLoaded(this.product);
  

 final  Product product;

/// Create a copy of ProductsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductsDetailLoadedCopyWith<ProductsDetailLoaded> get copyWith => _$ProductsDetailLoadedCopyWithImpl<ProductsDetailLoaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductsDetailLoaded&&(identical(other.product, product) || other.product == product));
}


@override
int get hashCode => Object.hash(runtimeType,product);

@override
String toString() {
  return 'ProductsState.loadDetail(product: $product)';
}


}

/// @nodoc
abstract mixin class $ProductsDetailLoadedCopyWith<$Res> implements $ProductsStateCopyWith<$Res> {
  factory $ProductsDetailLoadedCopyWith(ProductsDetailLoaded value, $Res Function(ProductsDetailLoaded) _then) = _$ProductsDetailLoadedCopyWithImpl;
@useResult
$Res call({
 Product product
});


$ProductCopyWith<$Res> get product;

}
/// @nodoc
class _$ProductsDetailLoadedCopyWithImpl<$Res>
    implements $ProductsDetailLoadedCopyWith<$Res> {
  _$ProductsDetailLoadedCopyWithImpl(this._self, this._then);

  final ProductsDetailLoaded _self;
  final $Res Function(ProductsDetailLoaded) _then;

/// Create a copy of ProductsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? product = null,}) {
  return _then(ProductsDetailLoaded(
null == product ? _self.product : product // ignore: cast_nullable_to_non_nullable
as Product,
  ));
}

/// Create a copy of ProductsState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProductCopyWith<$Res> get product {
  
  return $ProductCopyWith<$Res>(_self.product, (value) {
    return _then(_self.copyWith(product: value));
  });
}
}

/// @nodoc


class ProductsError implements ProductsState {
  const ProductsError(this.message);
  

 final  String message;

/// Create a copy of ProductsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductsErrorCopyWith<ProductsError> get copyWith => _$ProductsErrorCopyWithImpl<ProductsError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductsError&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'ProductsState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class $ProductsErrorCopyWith<$Res> implements $ProductsStateCopyWith<$Res> {
  factory $ProductsErrorCopyWith(ProductsError value, $Res Function(ProductsError) _then) = _$ProductsErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$ProductsErrorCopyWithImpl<$Res>
    implements $ProductsErrorCopyWith<$Res> {
  _$ProductsErrorCopyWithImpl(this._self, this._then);

  final ProductsError _self;
  final $Res Function(ProductsError) _then;

/// Create a copy of ProductsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(ProductsError(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
