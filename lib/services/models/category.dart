import 'package:calala_market/services/models/product.dart';

class ProductCategory {
  final int id;
  final String title;
  final String iconUrl;
  final List<Product> relatedProducts;

  ProductCategory({
    required this.id,
    required this.title,
    required this.iconUrl,
    required this.relatedProducts,
  });
}
