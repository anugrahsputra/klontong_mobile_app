import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:klontong_mobile_app/features/product/product.dart';

part 'add_product_bloc.freezed.dart';

part 'add_product_event.dart';

part 'add_product_state.dart';

class AddProductBloc extends Bloc<AddProductEvent, AddProductState> {
  final AddProductUsecase addProductUseCase;

  AddProductBloc({required this.addProductUseCase}) : super(const AddProductState()) {
    on<OnNameChanged>((event, emit) => emit(state.copyWith(name: event.name)));
    on<OnCategoryNameChanged>(
      (event, emit) => emit(state.copyWith(categoryName: event.categoryName)),
    );
    on<OnCategoryIdChanged>((event, emit) => emit(state.copyWith(categoryId: event.categoryId)));
    on<OnDescriptionChanged>((event, emit) => emit(state.copyWith(description: event.description)));
    on<OnWeightChanged>((event, emit) => emit(state.copyWith(weight: event.weight)));
    on<OnWidthChanged>((event, emit) => emit(state.copyWith(width: event.width)));
    on<OnLengthChanged>((event, emit) => emit(state.copyWith(length: event.length)));
    on<OnHeightChanged>((event, emit) => emit(state.copyWith(height: event.height)));
    on<OnHargaChanged>((event, emit) => emit(state.copyWith(harga: event.harga)));
    on<OnImageUrlChanged>((event, emit) => emit(state.copyWith(imageUrl: event.imageUrl)));

    on<SubmitProduct>(_onSubmitProduct);
  }

  Future<void> _onSubmitProduct(SubmitProduct event, Emitter<AddProductState> emit) async {
    emit(state.copyWith(isLoading: true, hasSubmitted: true, errorMessage: null));

    final product = ProductReq(
      sku: Random().nextInt(1000000000).toString(),
      name: state.name,
      categoryName: state.categoryName,
      categoryId: state.categoryId,
      description: state.description,
      weight: state.weight,
      width: state.width,
      length: state.length,
      height: state.height,
      harga: state.harga,
      image: state.imageUrl.isEmpty ? "https://cf.shopee.co.id/file/7cb930d1bd183a435f4fb3e5cc4a896b" : state.imageUrl,
    );

    final result = await addProductUseCase.execute(product);

    result.fold(
      (failure) => emit(state.copyWith(isLoading: false, errorMessage: failure.message)),
      (_) => emit(state.copyWith(isLoading: false)),
    );
  }
}