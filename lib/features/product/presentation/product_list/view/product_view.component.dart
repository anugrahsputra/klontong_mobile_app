part of 'product_view.dart';

class ProductSearchBar extends StatelessWidget {
  const ProductSearchBar({super.key, required this.appNavigator});

  final AppNavigator appNavigator ;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => appNavigator.goToSearchProduct(context),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        decoration: BoxDecoration(color: Colors.grey[200], borderRadius: BorderRadius.circular(25)),
        child: Row(
          children: [
            Icon(Icons.search, color: Colors.grey[600], size: 20),
            SizedBox(width: 12),
            Text('Search products', style: TextStyle(color: Colors.grey[600], fontSize: 16)),
          ],
        ),
      ),
    );
  }
}

class ProductList extends StatelessWidget {
  const ProductList({super.key, required this.productsCubit, required this.appNavigator});

  final ProductsCubit productsCubit;
  final AppNavigator appNavigator;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: BlocBuilder<ProductsCubit, PagingState<int, Product>>(
        builder: (context, state) {
          return RefreshIndicator(
            onRefresh: () async => productsCubit.fetchProducts(),
            child: PagedGridView<int, Product>(
              state: state,
              fetchNextPage: productsCubit.fetchProducts,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
                childAspectRatio: 0.75,
              ),
              showNewPageErrorIndicatorAsGridChild: false,
              showNewPageProgressIndicatorAsGridChild: false,
              showNoMoreItemsIndicatorAsGridChild: false,
              builderDelegate: PagedChildBuilderDelegate(
                itemBuilder: (context, item, index) {
                  return ProductCard(
                    product: item,
                    onTap: () => appNavigator.goToProductDetail(context, id: item.id!),
                  );
                },
              ),
            ),
          );
        },
      ),
    );
  }
}

class ProductCard extends StatelessWidget {
  final Product product;
  final VoidCallback? onTap;

  const ProductCard({super.key, required this.product, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withValues(alpha: 0.1),
              spreadRadius: 1,
              blurRadius: 8,
              offset: Offset(0, 2),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Product Image
            Expanded(
              flex: 3,
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.grey[100],
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(12),
                    topRight: Radius.circular(12),
                  ),
                ),
                child: Image.network(product.image),
              ),
            ),

            // Product Info
            Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Title
                    Text(
                      product.name,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.black87,
                      ),
                    ),
                    SizedBox(height: 4),

                    // Description
                    Expanded(
                      child: Text(
                        product.description,
                        style: TextStyle(fontSize: 12, color: Colors.grey[600], height: 1.3),
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    SizedBox(height: 8),

                    // Price
                    Text(
                      CurrencyFormatter.format(product.harga),
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Colors.black87,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}