part of 'service_locator.dart';

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

    // Category feature dependencies
    getIt.registerLazySingleton<CategoryRemoteDataSource>(
      () => CategoryRemoteDataSourceImpl(),
    );
    getIt.registerLazySingleton<CategoryRepository>(
      () => CategoryRepositoryImpl(remoteDataSource: getIt()),
    );
    getIt.registerLazySingleton<GetCategories>(
      () => GetCategories(repository: getIt()),
    );
  }
}
