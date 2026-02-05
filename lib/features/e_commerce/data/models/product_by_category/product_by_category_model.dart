import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_by_category_model.freezed.dart';
part 'product_by_category_model.g.dart';

@freezed
abstract class ProductByCategoryModel with _$ProductByCategoryModel {
  const factory ProductByCategoryModel({
    required String strMeal,
    required String strMealThumb,
    required String idMeal,
  }) = _ProductByCategoryModel;

  factory ProductByCategoryModel.fromJson(Map<String, dynamic> json) =>
      _$ProductByCategoryModelFromJson(json);
}
