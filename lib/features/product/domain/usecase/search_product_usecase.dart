import 'package:dartz/dartz.dart';
import 'package:klontong_mobile_app/core/core.dart';
import 'package:klontong_mobile_app/features/product/domain/domain.dart';

class SearchProductUsecase {
  final ProductRepository repository;

  SearchProductUsecase({required this.repository});

  Future<Either<Failure, List<Product>>> execute({
    int pageKey = 0,
    required int pageSize,
    String? search,
  }) async {
    return await repository.searchProduct(pageKey: pageKey, pageSize: pageSize, search: search);
  }
}