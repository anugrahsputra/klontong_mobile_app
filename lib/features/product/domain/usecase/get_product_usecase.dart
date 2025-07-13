import 'package:dartz/dartz.dart';
import 'package:klontong_mobile_app/core/domain/failures.dart';
import 'package:klontong_mobile_app/features/product/product.dart';

class GetProductUsecase {
  final ProductRepository repository;

  GetProductUsecase({required this.repository});

  Future<Either<Failure, List<Product>>> execute({int pageKey = 0, required int pageSize}) async {
    return await repository.getProduct(pageKey: pageKey, pageSize: pageSize);
  }
}