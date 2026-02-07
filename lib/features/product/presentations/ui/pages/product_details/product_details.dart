// import 'package:e_commerce_app/features/e_commerce/presentations/bloc/product_bloc.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';

// class ProductDetails extends StatelessWidget {
//   const ProductDetails({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("Product Details")),
//       body: BlocBuilder<ProductBloc, ProductState>(
//         builder: (context, state) {
//           if (state is ProductLoading) {
//             return const Center(child: CircularProgressIndicator());
//           } else if (state is ProductCategoryMealLoaded) {
//             return ListView.builder(
//               itemCount: state.productCategoryMeals.length,
//               itemBuilder: (context, index) {
//               final productCategoryMeal = state.productCategoryMeals[index];
//               return Card(
//                 child: ListTile(
//                   title: Text(productCategoryMeal.strMeal),
//                   leading: Image.network(productCategoryMeal.strMealThumb),
//                 ),
//               );
//             },
//           );
//         } else if (state is ProductError) {
//           return Center(child: Text(state.message));
//         } else {
//           return const Center(child: Text('No products found'));
//         }
//       },
//     ),
//     );
//   }
// }
