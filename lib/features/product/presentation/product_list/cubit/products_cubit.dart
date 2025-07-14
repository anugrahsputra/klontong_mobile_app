import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:klontong_mobile_app/features/product/product.dart';

class ProductsCubit extends Cubit<PagingState<int, Product>> {
  final GetProductUsecase getProduct;
  int _pageKey = 0;
  bool _isFetching = false;

  ProductsCubit({required this.getProduct}) : super(PagingState());

  void fetchInitialProducts() {
    _pageKey = 0;
    emit(PagingState());
    fetchNextPage();
  }

  void fetchNextPage() async {
    if (_isFetching || state.isLoading) return;
    _isFetching = true;

    emit(state.copyWith(isLoading: true, error: null));
    final result = await getProduct.execute(pageKey: _pageKey, pageSize: 10);

    result.fold(
          (failure) {
        _isFetching = false;
        emit(state.copyWith(isLoading: false, error: failure.message));
      },
          (data) {
        final isLastPage = data.isEmpty;
        emit(state.copyWith(
          pages: [...?state.pages, data],
          keys: [...?state.keys, _pageKey],
          hasNextPage: !isLastPage,
          isLoading: false,
        ));
        _isFetching = false;
        _pageKey++;
      },
    );
  }
}