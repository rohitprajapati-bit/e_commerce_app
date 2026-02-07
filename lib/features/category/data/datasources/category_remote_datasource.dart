import 'package:e_commerce_app/features/category/data/models/category_model.dart';

abstract class CategoryRemoteDataSource {
  Future<List<MealModel>> getCategories(String category);
}
