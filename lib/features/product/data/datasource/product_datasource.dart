import 'package:dartz/dartz.dart';
import 'package:klontong_mobile_app/core/core.dart';
import 'package:klontong_mobile_app/features/product/product.dart';

abstract class ProductDatasource {
  Future<Either<Failure, List<ProductDto>>> getProduct();

  Future<Either<Failure, ProductDto>> getProductDetail(int id);

  Future<Either<Failure, String>> addProduct(ProductDto product);
}

class ProductDatasourceImpl implements ProductDatasource {
  final NetworkClient client;

  ProductDatasourceImpl(this.client);

  @override
  Future<Either<Failure, String>> addProduct(ProductDto product) async {
    return await client.postParsedSafe(
      ApiEndpoints.product,
      converter: (json) => json['message'],
      data: product.toJson(),
    );
  }

  @override
  Future<Either<Failure, List<ProductDto>>> getProduct() async {
    return await client.getParsedListSafe(
      ApiEndpoints.product,
      converter: (json) => ProductDto.fromJson(json),
    );
  }

  @override
  Future<Either<Failure, ProductDto>> getProductDetail(int id) async {
    return await client.getParsedSafe(
      "${ApiEndpoints.product}/$id",
      converter: (json) => ProductDto.fromJson(json),
    );
  }
}