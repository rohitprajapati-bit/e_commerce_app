import 'package:e_commerce_app/features/product/domain/entities/all_product_entities.dart';

abstract class ProductRepository {
  Future<List<AllProductEntities>> allProducts();
  // Future<List<ProductByCategoryEntities>> productByCategory(String category);
  // Future<List<ProductEntities>> productDetails();
}