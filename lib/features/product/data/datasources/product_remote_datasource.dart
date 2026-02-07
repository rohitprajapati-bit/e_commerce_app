
import 'package:e_commerce_app/features/product/data/models/all_product_model.dart';

abstract class ProductRemoteDataSource {
  Future<List<AllProductModel>> getProducts();
  // Future<List<ProductByCategoryModel>> getCategoryMeal(String category);
}