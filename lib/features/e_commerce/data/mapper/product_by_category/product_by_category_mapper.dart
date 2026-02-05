
import 'package:e_commerce_app/features/e_commerce/data/models/product_by_category/product_by_category_model.dart';
import 'package:e_commerce_app/features/e_commerce/domain/entities/product_by_category_entities.dart';

extension ProductCategoryMapper on ProductByCategoryModel {
  ProductByCategoryEntities toEntity() {
    return ProductByCategoryEntities(
      idMeal: idMeal,
      strMeal: strMeal,
      strMealThumb: strMealThumb,
    );
  }
}