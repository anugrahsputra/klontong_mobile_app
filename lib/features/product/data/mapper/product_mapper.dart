import 'package:klontong_mobile_app/features/product/product.dart';

extension ProductMapper on ProductDto {
  Product toDomain() {
    return Product(
      id: id,
      categoryId: categoryId,
      categoryName: categoryName,
      sku: sku,
      name: name,
      description: description,
      weight: weight,
      width: width,
      length: length,
      height: height,
      image: image,
      harga: harga,
    );
  }
}