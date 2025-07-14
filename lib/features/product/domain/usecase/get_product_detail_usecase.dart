import 'package:dartz/dartz.dart';
import 'package:klontong_mobile_app/core/domain/failures.dart';
import 'package:klontong_mobile_app/features/product/product.dart';

class GetProductDetailUsecase {
  final ProductRepository repository;
  GetProductDetailUsecase({required this.repository});

  Future<Either<Failure, Product>> execute(String id) async {
    return await repository.getProductDetail(id);
  }
}