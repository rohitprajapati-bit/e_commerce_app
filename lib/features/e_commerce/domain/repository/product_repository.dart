import 'package:e_commerce_app/features/e_commerce/domain/entities/product_by_category_entities.dart';
import 'package:e_commerce_app/features/e_commerce/domain/entities/all_product_entities.dart';

abstract class ProductRepository {
  Future<List<AllProductEntities>> allProducts();
  Future<List<ProductByCategoryEntities>> productByCategory(String category);
  // Future<List<ProductEntities>> productDetails();
}