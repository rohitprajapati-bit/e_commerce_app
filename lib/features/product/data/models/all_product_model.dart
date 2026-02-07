import 'package:freezed_annotation/freezed_annotation.dart';

part 'all_product_model.freezed.dart';
part 'all_product_model.g.dart';

@freezed
abstract class AllProductModel with _$AllProductModel {
  const factory AllProductModel({
    required String idCategory,
    required String strCategory,
    required String strCategoryThumb,
    required String strCategoryDescription,
  }) = _AllProductModel;

  factory AllProductModel.fromJson(Map<String, dynamic> json) =>
      _$AllProductModelFromJson(json);
}
