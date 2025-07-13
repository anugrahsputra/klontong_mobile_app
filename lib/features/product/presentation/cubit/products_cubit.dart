import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:klontong_mobile_app/features/product/product.dart';

part 'products_cubit.freezed.dart';

part 'products_state.dart';

class ProductsCubit extends Cubit<PagingState<int, Product>> {
  final GetProductUsecase getProduct;

  ProductsCubit({required this.getProduct})
    : super(PagingState());

  void fetchProducts() async {
    if (state.isLoading) return;

    final newKey = (state.keys?.last ?? 0) + 1;

    emit(state.copyWith(isLoading: true, error: null));
    await Future.delayed(const Duration(seconds: 2));
    final result = await getProduct.execute(pageKey: newKey - 1, pageSize: 10);
    result.fold((failure) => emit(state.copyWith(isLoading: false, error: failure.message)), (
        data,
        ) {
      final isLastPage = data.isEmpty;
      emit(
        state.copyWith(
          pages: [...?state.pages, data],
          keys: [...?state.keys, newKey],
          hasNextPage: !isLastPage,
          isLoading: false,
        ),
      );
    });
  }
}