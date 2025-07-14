part of 'product_detail_cubit.dart';

@freezed
abstract class ProductDetailState with _$ProductDetailState {
  const factory ProductDetailState.initial() = ProductDetailInitial;

  const factory ProductDetailState.loading() = ProductDetailLoading;

  const factory ProductDetailState.loaded(Product product) = ProductDetailLoaded;

  const factory ProductDetailState.error(String message) = ProductDetailError;
}