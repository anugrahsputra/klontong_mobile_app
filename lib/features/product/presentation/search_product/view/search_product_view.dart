import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:klontong_mobile_app/core/core.dart';
import 'package:klontong_mobile_app/di.dart';
import 'package:klontong_mobile_app/features/product/product.dart';

part 'search_product_view.component.dart';

class SearchProductView extends StatefulWidget {
  const SearchProductView({super.key});

  @override
  State<SearchProductView> createState() => _SearchProductViewState();
}

class _SearchProductViewState extends State<SearchProductView> {
  final SearchProductCubit searchProductCubit = di<SearchProductCubit>();
  final AppNavigator appNavigator = di<AppNavigator>();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [BlocProvider(create: (context) => searchProductCubit)],
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            appNavigator.goToAddProduct(context);
          },
          child: Icon(Icons.add),
        ),
        backgroundColor: Colors.grey[50],
        appBar: AppBar(
          title: Text(
            'Search Products',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black),
          ),
          backgroundColor: Theme.of(context).colorScheme.surface,
          elevation: 0,
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              ProductSearchBar(onSearch: (query) => searchProductCubit.resetAndSearch(query)),
              SizedBox(height: 24),
              ProductList(searchProductCubit: searchProductCubit, appNavigator: appNavigator),
            ],
          ),
        ),
      ),
    );
  }
}