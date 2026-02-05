part of 'product_bloc.dart';

abstract class ProductState extends Equatable {
  const ProductState();

  @override
  List<Object> get props => [];
}

class ProductInitial extends ProductState {}

class ProductLoading extends ProductState {}

class ProductLoaded extends ProductState {
  final List<AllProductEntities> products;
  const ProductLoaded(this.products);


  @override
  List<Object> get props => [products];
}

class ProductCategoryMealLoaded extends ProductState {
  final List<ProductByCategoryEntities> productCategoryMeals;
  const ProductCategoryMealLoaded(this.productCategoryMeals);

  @override
  List<Object> get props => [productCategoryMeals];
}

class ProductError extends ProductState {
  final String message;
  const ProductError(this.message);

  @override
  List<Object> get props => [message];
}
