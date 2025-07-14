part of 'product_detail_view.dart';

class ProductDetailContent extends StatelessWidget {
  const ProductDetailContent({super.key, required this.product});

  final Product product;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Product Image
          ProductImage(imageUrl: product.image),

          // Product Details
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Product Name
                Text(
                  product.name,
                  style: const TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 8),

                // Category
                Text(
                  product.categoryName,
                  style: const TextStyle(
                    fontSize: 16,
                    color: Color(0xFF8B7355),
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 16),

                // Description
                Text(
                  product.description,
                  style: const TextStyle(fontSize: 16, color: Color(0xFF666666), height: 1.5),
                ),
                const SizedBox(height: 20),

                // Price
                Text(
                  CurrencyFormatter.format(product.harga),
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF2E7D32),
                  ),
                ),
                const SizedBox(height: 12),

                // SKU
                Text(
                  'SKU: ${product.sku}',
                  style: const TextStyle(fontSize: 14, color: Color(0xFF999999)),
                ),
                const SizedBox(height: 32),

                // Specifications Title
                const Text(
                  'Specifications',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black),
                ),
                const SizedBox(height: 20),

                // Divider
                Container(height: 1, color: const Color(0xFFE0E0E0)),
                const SizedBox(height: 20),

                // Specifications Grid
                Row(
                  children: [
                    // Left Column
                    Expanded(
                      child: Column(
                        children: [
                          // Weight
                          _buildSpecificationItem('Weight', '${product.weight}g'),
                          const SizedBox(height: 32),
                          // Length
                          _buildSpecificationItem('Length', '${product.length}cm'),
                        ],
                      ),
                    ),
                    const SizedBox(width: 40),
                    // Right Column
                    Expanded(
                      child: Column(
                        children: [
                          // Width
                          _buildSpecificationItem('Width', '${product.width}cm'),
                          const SizedBox(height: 32),
                          // Height
                          _buildSpecificationItem('Height', '${product.height}cm'),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 40),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSpecificationItem(String label, String value) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(
            fontSize: 16,
            color: Color(0xFF8B7355),
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          value,
          style: const TextStyle(fontSize: 16, color: Colors.black, fontWeight: FontWeight.w500),
        ),
      ],
    );
  }
}

class ProductImage extends StatelessWidget {
  const ProductImage({super.key, required this.imageUrl});

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 400,
      decoration: const BoxDecoration(color: Color(0xFFF5F5F5)),
      child: Center(
        child: Container(
          width: 280,
          height: 350,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: Colors.white),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.network(
              imageUrl,
              fit: BoxFit.cover,
              loadingBuilder: (context, child, loadingProgress) {
                if (loadingProgress == null) return child;
                return Center(
                  child: CircularProgressIndicator(
                    value: loadingProgress.expectedTotalBytes != null
                        ? loadingProgress.cumulativeBytesLoaded /
                              loadingProgress.expectedTotalBytes!
                        : null,
                  ),
                );
              },
              errorBuilder: (context, error, stackTrace) {
                return Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    gradient: const LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [Color(0xFFE8E8E8), Color(0xFFD0D0D0)],
                    ),
                  ),
                  child: const Center(
                    child: Icon(Icons.image_not_supported, size: 100, color: Color(0xFFA0A0A0)),
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}