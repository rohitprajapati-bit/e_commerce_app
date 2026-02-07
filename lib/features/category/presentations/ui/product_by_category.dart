import 'package:e_commerce_app/features/category/presentations/bloc/category_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductByCategory extends StatefulWidget {
  final dynamic category;
  const ProductByCategory({super.key, required this.category});

  @override
  State<ProductByCategory> createState() => _ProductByCategoryState();
}

class _ProductByCategoryState extends State<ProductByCategory> {
  // late ProductBloc productBloc;
  @override
  void initState() {
    super.initState();
    // productBloc = ProductBloc(productRepository: getIt())
    context.read<CategoryBloc>().add(
      CategoryLoadEvent(category: widget.category),
    );
  }

  // @override
  // void dispose() {
  //   productBloc.close();
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: const Text('Product Category'),
      ),
      body: BlocBuilder<CategoryBloc, CategoryState>(
        builder: (context, state) {
          if (state is CategoryLoading) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is CategoryLoaded) {
            return GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1,
                mainAxisSpacing: 2,
                crossAxisSpacing: 2,
                childAspectRatio: 1.5,
              ),
              itemCount: state.categories.length,
              itemBuilder: (context, index) {
                final productCategoryMeal = state.categories[index];
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
                          productCategoryMeal.strMealThumb ?? '',
                          fit: BoxFit.cover,
                          height: 180,
                          width: 180,
                        ),
                        SizedBox(height: 10),
                        Text(
                          productCategoryMeal.strMeal ?? '',
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
          } else if (state is CategoryError) {
            return Center(child: Text(state.errorMessage));
          } else {
            return const SizedBox();
          }
        },
      ),
    );
  }
}
