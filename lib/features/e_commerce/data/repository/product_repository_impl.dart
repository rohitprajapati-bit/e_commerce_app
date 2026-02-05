import 'package:e_commerce_app/features/e_commerce/data/datasources/product_remote_datasource.dart';
import 'package:e_commerce_app/features/e_commerce/data/mapper/all_product/all_product_mapper.dart';
import 'package:e_commerce_app/features/e_commerce/data/mapper/product_by_category/product_by_category_mapper.dart';
import 'package:e_commerce_app/features/e_commerce/domain/entities/product_by_category_entities.dart';
import 'package:e_commerce_app/features/e_commerce/domain/entities/all_product_entities.dart';
import 'package:e_commerce_app/features/e_commerce/domain/repository/product_repository.dart';

class ProductRepositoryImpl implements ProductRepository {
  final ProductRemoteDataSource productRemoteDataSource;
  ProductRepositoryImpl(this.productRemoteDataSource);
  @override
  Future<List<AllProductEntities>> allProducts() async {
    return await productRemoteDataSource.getProducts().then((value) {
      return value.map((e) => e.toEntity()).toList();
    });
  }

  @override
  Future<List<ProductByCategoryEntities>> productByCategory(String category) async {
    return await productRemoteDataSource.getCategoryMeal(category).then((value) {
      return value.map((e) => e.toEntity()).toList();
    });
  }
}
