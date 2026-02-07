import 'package:e_commerce_app/features/category/domain/entities/category_entity.dart';

abstract class CategoryRepository {
  Future<List<MealEntity>> getCategories(String category);
}
