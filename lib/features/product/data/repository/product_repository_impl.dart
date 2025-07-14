import 'package:dartz/dartz.dart';
import 'package:klontong_mobile_app/core/domain/failures.dart';
import 'package:klontong_mobile_app/features/product/product.dart';

class ProductRepositoryImpl implements ProductRepository {
  final ProductDatasource datasource;

  ProductRepositoryImpl({required this.datasource});

  @override
  Future<Either<Failure, Product>> addProduct(ProductReq product) async {
    final result = await datasource.addProduct(product);
    return result.fold((failure) => Left(failure), (data) => Right(data.toDomain()));
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
  Future<Either<Failure, Product>> getProductDetail(String id) async {
    final result = await datasource.getProductDetail(id);
    return result.fold((failure) => Left(failure), (data) => Right(data.toDomain()));
  }

  @override
  Future<Either<Failure, List<Product>>> searchProduct({
    int pageKey = 0,
    required int pageSize,
    String? search,
  }) async {
    final result = await datasource.getProduct();

    return result.fold((failure) => Left(failure), (data) {
      final products = data.map((e) => e.toDomain()).toList();

      final filtered = (search == null || search.isEmpty)
          ? products
          : products.where((p) => p.name.toLowerCase().contains(search.toLowerCase())).toList();

      final start = pageKey * pageSize;
      if (start >= filtered.length) return const Right([]);
      final end = (start + pageSize).clamp(0, filtered.length);

      return Right(filtered.sublist(start, end));
    });
  }
}