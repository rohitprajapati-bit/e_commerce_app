import 'package:e_commerce_app/core/dependency_injection/service_locator.dart';
import 'package:e_commerce_app/features/e_commerce/data/datasources/product_remote_datasource.dart';
import 'package:e_commerce_app/features/e_commerce/data/datasources/product_remote_datasocure_impl.dart';
import 'package:e_commerce_app/features/e_commerce/data/repository/product_repository_impl.dart';
import 'package:e_commerce_app/features/e_commerce/domain/repository/product_repository.dart';
import 'package:e_commerce_app/features/e_commerce/domain/usecases/all_product_usecase.dart';

class DependencyInjection {
  void init() {
    getIt.registerLazySingleton<ProductRemoteDataSource>(
      () => ProductRemoteDataSourceImpl(),
    );
    getIt.registerLazySingleton<ProductRepository>(
      () => ProductRepositoryImpl(getIt()),
    );

    getIt.registerLazySingleton<ProductGetUsecase>(
      () => ProductGetUsecase(getIt()),
    );
  }
}
