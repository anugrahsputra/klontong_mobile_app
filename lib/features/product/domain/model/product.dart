import 'package:freezed_annotation/freezed_annotation.dart';

part 'product.freezed.dart';

@freezed
abstract class Product with _$Product {
  const factory Product({
    required int id,
    required int categoryId,
    required String categoryName,
    required String sku,
    required String name,
    required String description,
    required int weight,
    required int width,
    required int length,
    required int height,
    required String image,
    required int harga,
  }) = _Product;
}
