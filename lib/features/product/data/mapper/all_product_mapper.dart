import 'package:e_commerce_app/features/product/data/models/all_product_model.dart';
import '../../domain/entities/all_product_entities.dart';

extension AllProductMapper on AllProductModel {
  AllProductEntities toEntity() {
    return AllProductEntities(
      idCategory: idCategory,
      strCategory: strCategory,
      strCategoryThumb: strCategoryThumb,
      strCategoryDescription: strCategoryDescription,
    );
  }
}
