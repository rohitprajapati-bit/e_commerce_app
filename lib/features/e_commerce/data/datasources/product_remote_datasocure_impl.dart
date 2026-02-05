import 'dart:convert';

import 'package:e_commerce_app/features/e_commerce/data/datasources/product_remote_datasource.dart';
import 'package:e_commerce_app/features/e_commerce/data/models/product_by_category/product_by_category_model.dart';
import 'package:e_commerce_app/features/e_commerce/data/models/all_product/all_product_model.dart';
import 'package:http/http.dart' as http;

class ProductRemoteDataSourceImpl implements ProductRemoteDataSource {
  @override
  Future<List<AllProductModel>> getProducts() async {
try {
      final response = await http.get(
      Uri.parse('https://www.themealdb.com/api/json/v1/1/categories.php'),
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
      },
    );
    if (response.statusCode == 200) {
      final Map<String, dynamic> data = json.decode(response.body);
      final List<dynamic> categories = data['categories'];
      return categories.map((e) => AllProductModel.fromJson(e)).toList();
    } else {
      throw Exception('Failed to load products');
    }
} catch (e) {
  throw Exception('Failed to load products: $e');
}
  }

  @override
  @override
  Future<List<ProductByCategoryModel>> getCategoryMeal(String category) async {
    try {
      final response = await http.get(
        Uri.parse('https://www.themealdb.com/api/json/v1/1/filter.php?c=$category'),
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
        },
      );
      if (response.statusCode == 200) {
        final Map<String, dynamic> data = json.decode(response.body);
        final List<dynamic> categories = data['meals'];
        return categories.map((e) => ProductByCategoryModel.fromJson(e)).toList();
      } else {
        throw Exception('Failed to load products');
      }
    } catch (e) {
      throw Exception('Failed to load products: $e');
    }
  }
}
