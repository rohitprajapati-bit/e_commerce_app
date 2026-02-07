import 'package:e_commerce_app/features/category/data/datasources/category_remote_datasource.dart';
import 'package:e_commerce_app/features/category/data/mapper/category_mapper.dart';
import 'package:e_commerce_app/features/category/domain/entities/category_entity.dart';
import 'package:e_commerce_app/features/category/domain/repository/category_repository.dart';

class CategoryRepositoryImpl implements CategoryRepository {
  final CategoryRemoteDataSource remoteDataSource;

  CategoryRepositoryImpl({required this.remoteDataSource});

  @override
  Future<List<MealEntity>> getCategories(String category) async {
    final categories = await remoteDataSource.getCategories(category);
    return categories.map((model) => model.toEntity()).toList();
  }
}
