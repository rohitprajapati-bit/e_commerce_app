import 'package:e_commerce_app/features/e_commerce/presentations/bloc/product_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../core/dependency_injection/service_locator.dart';

class ProductByCategory extends StatefulWidget {
  final dynamic category;
  const ProductByCategory({super.key, required this.category});

  @override
  State<ProductByCategory> createState() => _ProductByCategoryState();
}

class _ProductByCategoryState extends State<ProductByCategory> {
  late ProductBloc productBloc;
  @override
  void initState() {
    super.initState();
    productBloc = ProductBloc(productRepository: getIt())
      ..add(ProductByCategoryEvent(category: widget.category));
  }

  @override
  void dispose() {
    productBloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: productBloc,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title: const Text('Product Category'),
        ),
        body: BlocBuilder<ProductBloc, ProductState>(
          builder: (context, state) {
            if (state is ProductLoading) {
              return const Center(child: CircularProgressIndicator());
            } else if (state is ProductCategoryMealLoaded) {
              return GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1,
                  mainAxisSpacing: 2,
                  crossAxisSpacing: 2,
                  childAspectRatio: 1.5,
                ),
                itemCount: state.productCategoryMeals.length,
                itemBuilder: (context, index) {
                  final productCategoryMeal = state.productCategoryMeals[index];
                  return Card(
                    margin: const EdgeInsets.symmetric(
                      horizontal: 8,
                      vertical: 8,
                    ),
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      child: Column(
                        children: [
                          Image.network(
                            productCategoryMeal.strMealThumb,
                            fit: BoxFit.cover,
                            height: 180,
                            width: 180,
                          ),
                          SizedBox(height: 10),
                          Text(
                            productCategoryMeal.strMeal,
                            maxLines: 2,
                            style: TextStyle(
                              fontSize: 15,
                              overflow: TextOverflow.ellipsis,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              );
            } else if (state is ProductError) {
              return Center(child: Text(state.message));
            } else {
              return const Center(child: Text('No products found'));
            }
          },
        ),
      ),
    );
  }
}
