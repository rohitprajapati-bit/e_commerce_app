import 'package:e_commerce_app/features/e_commerce/data/models/all_product/all_product_model.dart';
import 'package:e_commerce_app/features/e_commerce/domain/entities/product_by_category_entities.dart';

import '../../../domain/entities/all_product_entities.dart';

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
