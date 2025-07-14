import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:klontong_mobile_app/features/product/domain/domain.dart';

part 'product_detail_cubit.freezed.dart';

part 'product_detail_state.dart';

class ProductDetailCubit extends Cubit<ProductDetailState> {
  final GetProductDetailUsecase getProductDetail;

  ProductDetailCubit({required this.getProductDetail}) : super(const ProductDetailState.loading());

  void fetchProductDetail(String id) async {
    emit(const ProductDetailState.loading());
    final result = await getProductDetail.execute(id);
    result.fold(
      (failure) => emit(ProductDetailState.error(failure.message)),
      (product) => emit(ProductDetailState.loaded(product)),
    );
  }
}