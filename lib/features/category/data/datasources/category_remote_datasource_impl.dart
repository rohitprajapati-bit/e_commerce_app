import 'dart:developer';

import 'package:e_commerce_app/core/network/api_endpoints.dart';
import 'package:e_commerce_app/core/network/network_api_services.dart';
import 'package:e_commerce_app/features/category/data/datasources/category_remote_datasource.dart';
import 'package:e_commerce_app/features/category/data/models/category_model.dart';

class CategoryRemoteDataSourceImpl implements CategoryRemoteDataSource {
  final _apiClient = NetworkApiServices();
  @override
  Future<List<MealModel>> getCategories(String category) async {
    try {
      final response = await _apiClient.getApi(
        '${ApiEndpoints.productByCategoryApiEndPoint}$category',
      );
final meals = (response['meals'] as List?) ?? [];

return meals.map((e) => MealModel.fromJson(e)).toList();
      // Response is a Map with 'meals' key containing the array
    } catch (e) {
      log(e.toString());
      throw Exception(e.toString());
    }
  }

  // @override
  // Future<List<CategoryModel>> getCategories() async {
  //   try {
  //     final response = await http.get(
  //       Uri.parse('https://www.themealdb.com/api/json/v1/1/categories.php'),
  //       headers: {
  //         'Content-Type': 'application/json',
  //         'Accept': 'application/json',
  //       },
  //     );
  //     if (response.statusCode == 200) {
  //       final Map<String, dynamic> data = json.decode(response.body);
  //       final List<dynamic> categories = data['categories'];
  //       return categories.map((e) => CategoryModel.fromJson(e)).toList();
  //     } else {
  //       throw Exception('Failed to load categories');
  //     }
  //   } catch (e) {
  //     throw Exception('Failed to load categories: $e');
  //   }
  // }
}
