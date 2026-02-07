import 'package:e_commerce_app/features/product/data/datasources/product_remote_datasource.dart';
import 'package:e_commerce_app/features/product/data/mapper/all_product_mapper.dart';
import 'package:e_commerce_app/features/product/domain/entities/all_product_entities.dart';
import 'package:e_commerce_app/features/product/domain/repository/product_repository.dart';

class ProductRepositoryImpl implements ProductRepository {
  final ProductRemoteDataSource productRemoteDataSource;
  ProductRepositoryImpl(this.productRemoteDataSource);
  @override
  Future<List<AllProductEntities>> allProducts() async {
    return await productRemoteDataSource.getProducts().then((value) {
      return value.map((e) => e.toEntity()).toList();
    });
  }

  // @override
  // Future<List<ProductByCategoryEntities>> productByCategory(String category) async {
  //   return await productRemoteDataSource.getCategoryMeal(category).then((value) {
  //     return value.map((e) => e.toEntity()).toList();
  //   });
  // }
}
