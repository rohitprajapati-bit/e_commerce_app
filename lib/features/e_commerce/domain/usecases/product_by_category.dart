import 'package:e_commerce_app/features/e_commerce/domain/entities/product_by_category_entities.dart';
import 'package:e_commerce_app/features/e_commerce/domain/entities/all_product_entities.dart';
import 'package:e_commerce_app/features/e_commerce/domain/repository/product_repository.dart';

class ProductCategoryMealUsecase {
  final ProductRepository productRepository;
  ProductCategoryMealUsecase(this.productRepository);
  Future<List<ProductByCategoryEntities>> call(String category) async {
    return await productRepository.productByCategory(category);
  }
}
