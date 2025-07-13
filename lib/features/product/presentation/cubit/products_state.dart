part of 'products_cubit.dart';

@freezed
class ProductsState with _$ProductsState {
  const factory ProductsState.initial() = ProductsInitial;
  const factory ProductsState.loading() = ProductsLoading;
  const factory ProductsState.loaded(List<Product> products, int pageKey) = ProductsLoaded;
  const factory ProductsState.loadDetail(Product product) = ProductsDetailLoaded;
  const factory ProductsState.error(String message) = ProductsError;
}