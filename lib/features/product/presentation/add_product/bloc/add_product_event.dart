part of "add_product_bloc.dart";

@freezed
abstract class AddProductEvent with _$AddProductEvent {
 const factory AddProductEvent.onNameChanged(String name) = OnNameChanged;
 const factory AddProductEvent.onCategoryNameChanged(String categoryName) = OnCategoryNameChanged;
 const factory AddProductEvent.onCategoryIdChanged(int categoryId) = OnCategoryIdChanged;
 const factory AddProductEvent.onDescriptionChanged(String description) = OnDescriptionChanged;
 const factory AddProductEvent.onWeightChanged(int weight) = OnWeightChanged;
 const factory AddProductEvent.onWidthChanged(int width) = OnWidthChanged;
 const factory AddProductEvent.onLengthChanged(int length) = OnLengthChanged;
 const factory AddProductEvent.onHeightChanged(int height) = OnHeightChanged;
 const factory AddProductEvent.onHargaChanged(int harga) = OnHargaChanged;
 const factory AddProductEvent.onImageUrlChanged(String imageUrl) = OnImageUrlChanged;

 const factory AddProductEvent.submit() = SubmitProduct;
}