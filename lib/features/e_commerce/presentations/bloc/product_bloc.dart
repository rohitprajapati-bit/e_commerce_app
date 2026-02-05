import 'package:bloc/bloc.dart';
import 'package:e_commerce_app/features/e_commerce/domain/entities/product_by_category_entities.dart';
import 'package:e_commerce_app/features/e_commerce/domain/entities/all_product_entities.dart';
import 'package:e_commerce_app/features/e_commerce/domain/repository/product_repository.dart';
import 'package:equatable/equatable.dart';
part 'product_state.dart';
part 'product_event.dart';

class ProductBloc extends Bloc<ProductEvent, ProductState> {
  final ProductRepository productRepository;
  ProductBloc({required this.productRepository}) : super(ProductInitial()) {

    on<AllProductEvent>((event, emit) async {
      try {
        emit(ProductLoading());
        final result = await productRepository.allProducts();
        if (result.isEmpty) {
          emit(ProductError('No products found'));
        } else {
          emit(ProductLoaded( result));
        }
      } catch (e) {
        emit(ProductError(e.toString()));
      }
    });



    on<ProductByCategoryEvent>((event, emit) async {
      try {
        emit(ProductLoading());
        final result = await productRepository.productByCategory(event.category);
        if (result.isEmpty) {
          emit(ProductError('No products found'));
        } else {
          emit(ProductCategoryMealLoaded(result));
        }
      } catch (e) {
        emit(ProductError(e.toString()));
      }
    });
  }
}
