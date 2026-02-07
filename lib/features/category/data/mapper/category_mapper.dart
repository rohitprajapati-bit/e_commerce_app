import 'package:e_commerce_app/features/category/data/models/category_model.dart';

import '../../domain/entities/category_entity.dart';

extension MealMapper on MealModel {
  MealEntity toEntity() {
    return MealEntity(
      idMeal: idMeal,
      strMeal: strMeal,
      strMealThumb: strMealThumb,
    );
  }
}
