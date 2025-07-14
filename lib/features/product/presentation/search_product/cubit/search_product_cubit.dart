import 'package:bloc/bloc.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:klontong_mobile_app/features/product/product.dart';

class SearchProductCubit extends Cubit<PagingState<int, Product>> {
  final SearchProductUsecase searchProduct;

  String _search = '';
  int _pageKey = 0;
  bool _isFetching = false;

  SearchProductCubit({required this.searchProduct}) : super(PagingState());

  void resetAndSearch(String search) {
    _search = search;
    _pageKey = 0;
    emit(PagingState()); // Reset state
    fetchNextPage();     // Fetch first page
  }

  void fetchNextPage() async {
    if (_isFetching || state.isLoading) return;
    _isFetching = true;
    emit(state.copyWith(isLoading: true, error: null));

    final result = await searchProduct.execute(
      pageKey: _pageKey,
      pageSize: 10,
      search: _search,
    );

    result.fold(
          (failure) {
        _isFetching = false;
        emit(state.copyWith(isLoading: false, error: failure.message));
      },
          (products) {
        final isLastPage = products.isEmpty;

        emit(state.copyWith(
          pages: [...?state.pages, products],
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