import 'package:e_commerce_app/features/product/domain/entities/all_product_entities.dart';
import 'package:e_commerce_app/features/product/domain/repository/product_repository.dart';

class ProductGetUsecase {
  final ProductRepository productRepository;
  ProductGetUsecase(this.productRepository);
  Future<List<AllProductEntities>> call() async {
    return await productRepository.allProducts();
  }
}

