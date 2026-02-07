import 'package:e_commerce_app/features/category/domain/entities/category_entity.dart';
import 'package:e_commerce_app/features/category/domain/repository/category_repository.dart';

class GetCategories {
  final CategoryRepository repository;

  GetCategories({required this.repository});

  Future<List<MealEntity>> call(String category) async {
    return await repository.getCategories(category);
  }
}
