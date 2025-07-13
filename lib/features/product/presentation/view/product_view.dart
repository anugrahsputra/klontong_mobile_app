import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:klontong_mobile_app/core/utils/currency_formatter.dart';
import 'package:klontong_mobile_app/di.dart';
import 'package:klontong_mobile_app/features/product/product.dart';

part 'product_view.component.dart';

class ProductView extends StatefulWidget {
  const ProductView({super.key});

  @override
  State<ProductView> createState() => _ProductViewState();
}

class _ProductViewState extends State<ProductView> {
  final ProductsCubit productsCubit = di<ProductsCubit>();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => productsCubit,
        ),
      ],
      child: Scaffold(
        backgroundColor: Colors.grey[50],
        appBar: AppBar(
          title: Text(
            'Products',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          backgroundColor: Theme.of(context).colorScheme.surface,
          elevation: 0,
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              ProductSearchBar(),
              SizedBox(height: 24),
              ProductList(productsCubit: productsCubit),
            ],
          ),
        ),
      ),
    );
  }
}