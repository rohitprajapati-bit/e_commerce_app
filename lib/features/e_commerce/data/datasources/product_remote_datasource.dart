
import 'package:e_commerce_app/features/e_commerce/data/models/product_by_category/product_by_category_model.dart';
import 'package:e_commerce_app/features/e_commerce/data/models/all_product/all_product_model.dart';

abstract class ProductRemoteDataSource {
  Future<List<AllProductModel>> getProducts();
  Future<List<ProductByCategoryModel>> getCategoryMeal(String category);
}