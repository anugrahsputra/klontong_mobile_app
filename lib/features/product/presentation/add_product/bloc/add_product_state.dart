part of "add_product_bloc.dart";

@freezed
abstract class AddProductState with _$AddProductState {
  const factory AddProductState({
    @Default('') String name,
    @Default('') String categoryName,
    @Default(0) int categoryId,
    @Default('') String description,
    @Default(0) int weight,
    @Default(0) int width,
    @Default(0) int length,
    @Default(0) int height,
    @Default(0) int harga,
    @Default('') String imageUrl,
    @Default(false) bool isLoading,
    @Default(false) bool hasSubmitted,
    String? errorMessage,
  }) = _AddProductState;
}