import 'package:dartz/dartz.dart';
import 'package:klontong_mobile_app/core/core.dart';
import 'package:klontong_mobile_app/features/product/product.dart';

abstract class ProductRepository {
  Future<Either<Failure, List<Product>>> getProduct({int pageKey = 0, required int pageSize});
  Future<Either<Failure, Product>> getProductDetail(int id);
  Future<Either<Failure, String>> addProduct(ProductDto product);
}