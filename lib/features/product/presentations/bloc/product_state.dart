part of 'product_bloc.dart';

abstract class ProductState extends Equatable {
  // final List<AllProductEntities> products;
  // final List<ProductByCategoryEntities> productCategoryMeals;
  // final String message;
  // final bool isLoading;
  const ProductState(
    // this.products,
    // this.productCategoryMeals,
    // this.message,
    // this.isLoading,
  );

  // ProductState copyWith({
  //   List<AllProductEntities>? products,
  //   List<ProductByCategoryEntities>? productCategoryMeals,
  //   String? message,
  //   bool? isLoading,
  // }) {
  //   return ProductState(
  //     products ?? this.products,
  //     productCategoryMeals ?? this.productCategoryMeals,
  //     message ?? this.message,
  //     isLoading ?? this.isLoading,
  //   );
  // }

  @override
  List<Object> get props => [
    // products,
    // productCategoryMeals,
    // message,
    // isLoading,
  ];
}

class ProductInitial extends ProductState {}

class ProductLoading extends ProductState {}

class ProductLoaded extends ProductState {
  final List<AllProductEntities> products;
  const ProductLoaded({required this.products});

  @override
  List<Object> get props => [products];
}

class ProductError extends ProductState {
  final String message;
  const ProductError(this.message);

  @override
  List<Object> get props => [message];
}
