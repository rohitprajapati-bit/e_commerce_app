part of 'product_bloc.dart';

abstract class ProductEvent extends Equatable {
  const ProductEvent();

  @override
  List<Object> get props => [];
}

class AllProductEvent extends ProductEvent {}


class ProductByCategoryEvent extends ProductEvent {
  final String category;
  const ProductByCategoryEvent({required this.category});
}
