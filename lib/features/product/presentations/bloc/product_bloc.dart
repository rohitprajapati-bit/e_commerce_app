import 'package:bloc/bloc.dart';
import 'package:e_commerce_app/features/product/domain/entities/all_product_entities.dart';
import 'package:e_commerce_app/features/product/domain/repository/product_repository.dart';
import 'package:equatable/equatable.dart';
part 'product_state.dart';
part 'product_event.dart';

class ProductBloc extends Bloc<ProductEvent, ProductState> {
  final ProductRepository productRepository;
  ProductBloc({required this.productRepository}) : super(ProductInitial()) {
    on<AllProductEvent>(_onAllProductEvent);
  }

  void _onAllProductEvent(
    AllProductEvent event,
    Emitter<ProductState> emit,
  ) async {
    try {
      emit(ProductInitial());
      final result = await productRepository.allProducts();
      if (result.isEmpty) {
        emit(ProductError('No Products Fount'));
      } else {
        emit(ProductLoaded(products: result));
      }
    } catch (e) {
      emit(ProductError(e.toString()));
    }
  }
}
