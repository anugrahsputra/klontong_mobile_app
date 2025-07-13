import 'package:dartz/dartz.dart';
import 'package:klontong_mobile_app/core/domain/failures.dart';
import 'package:klontong_mobile_app/features/product/product.dart';

class ProductRepositoryImpl implements ProductRepository {
  final ProductDatasource datasource;

  ProductRepositoryImpl({required this.datasource});

  @override
  Future<Either<Failure, String>> addProduct(ProductDto product) async {
    final result = await datasource.addProduct(product);
    return result.fold((failure) => Left(failure), (data) => Right(data));
  }

  @override
  Future<Either<Failure, List<Product>>> getProduct({
    int pageKey = 0,
    required int pageSize,
  }) async {
    final result = await datasource.getProduct();
    return result.fold((failure) => Left(failure), (data) {
      final products = data.map((e) => e.toDomain()).toList();

      final startIndex = pageKey * pageSize;
      if (startIndex >= products.length) {
        return const Right([]);
      }

      final endIndex = (startIndex + pageSize).clamp(0, products.length);
      final paginatedProducts = products.sublist(startIndex, endIndex);

      return Right(paginatedProducts);
    });
  }

  @override
  Future<Either<Failure, Product>> getProductDetail(int id) async {
    final reseult = await datasource.getProductDetail(id);
    return reseult.fold((failure) => Left(failure), (data) => Right(data.toDomain()));
  }
}