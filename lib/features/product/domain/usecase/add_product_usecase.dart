import 'package:dartz/dartz.dart';
import 'package:klontong_mobile_app/core/domain/failures.dart';
import 'package:klontong_mobile_app/features/product/product.dart';

class AddProductUsecase {
  final ProductRepository repository;

  AddProductUsecase({required this.repository});

  Future<Either<Failure, Product>> execute(ProductReq product) async {
    return await repository.addProduct(product);
  }
}