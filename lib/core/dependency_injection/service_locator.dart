import 'package:get_it/get_it.dart';
import '../../features/product/data/datasources/product_remote_datasocure_impl.dart';
import '../../features/product/data/datasources/product_remote_datasource.dart';
import '../../features/product/data/repository/product_repository_impl.dart';
import '../../features/product/domain/repository/product_repository.dart';
import '../../features/product/domain/usecases/all_product_usecase.dart';
import '../../features/category/data/datasources/category_remote_datasource.dart';
import '../../features/category/data/datasources/category_remote_datasource_impl.dart';
import '../../features/category/data/repository/category_repository_impl.dart';
import '../../features/category/domain/repository/category_repository.dart';
import '../../features/category/domain/usecases/get_categories.dart';

part 'dependency_injection.dart';

final getIt = GetIt.instance;
