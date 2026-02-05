// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_by_category_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ProductByCategoryModel {

 String get strMeal; String get strMealThumb; String get idMeal;
/// Create a copy of ProductByCategoryModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductByCategoryModelCopyWith<ProductByCategoryModel> get copyWith => _$ProductByCategoryModelCopyWithImpl<ProductByCategoryModel>(this as ProductByCategoryModel, _$identity);

  /// Serializes this ProductByCategoryModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductByCategoryModel&&(identical(other.strMeal, strMeal) || other.strMeal == strMeal)&&(identical(other.strMealThumb, strMealThumb) || other.strMealThumb == strMealThumb)&&(identical(other.idMeal, idMeal) || other.idMeal == idMeal));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,strMeal,strMealThumb,idMeal);

@override
String toString() {
  return 'ProductByCategoryModel(strMeal: $strMeal, strMealThumb: $strMealThumb, idMeal: $idMeal)';
}


}

/// @nodoc
abstract mixin class $ProductByCategoryModelCopyWith<$Res>  {
  factory $ProductByCategoryModelCopyWith(ProductByCategoryModel value, $Res Function(ProductByCategoryModel) _then) = _$ProductByCategoryModelCopyWithImpl;
@useResult
$Res call({
 String strMeal, String strMealThumb, String idMeal
});




}
/// @nodoc
class _$ProductByCategoryModelCopyWithImpl<$Res>
    implements $ProductByCategoryModelCopyWith<$Res> {
  _$ProductByCategoryModelCopyWithImpl(this._self, this._then);

  final ProductByCategoryModel _self;
  final $Res Function(ProductByCategoryModel) _then;

/// Create a copy of ProductByCategoryModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? strMeal = null,Object? strMealThumb = null,Object? idMeal = null,}) {
  return _then(_self.copyWith(
strMeal: null == strMeal ? _self.strMeal : strMeal // ignore: cast_nullable_to_non_nullable
as String,strMealThumb: null == strMealThumb ? _self.strMealThumb : strMealThumb // ignore: cast_nullable_to_non_nullable
as String,idMeal: null == idMeal ? _self.idMeal : idMeal // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ProductByCategoryModel].
extension ProductByCategoryModelPatterns on ProductByCategoryModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProductByCategoryModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProductByCategoryModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProductByCategoryModel value)  $default,){
final _that = this;
switch (_that) {
case _ProductByCategoryModel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProductByCategoryModel value)?  $default,){
final _that = this;
switch (_that) {
case _ProductByCategoryModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String strMeal,  String strMealThumb,  String idMeal)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProductByCategoryModel() when $default != null:
return $default(_that.strMeal,_that.strMealThumb,_that.idMeal);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String strMeal,  String strMealThumb,  String idMeal)  $default,) {final _that = this;
switch (_that) {
case _ProductByCategoryModel():
return $default(_that.strMeal,_that.strMealThumb,_that.idMeal);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String strMeal,  String strMealThumb,  String idMeal)?  $default,) {final _that = this;
switch (_that) {
case _ProductByCategoryModel() when $default != null:
return $default(_that.strMeal,_that.strMealThumb,_that.idMeal);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ProductByCategoryModel implements ProductByCategoryModel {
  const _ProductByCategoryModel({required this.strMeal, required this.strMealThumb, required this.idMeal});
  factory _ProductByCategoryModel.fromJson(Map<String, dynamic> json) => _$ProductByCategoryModelFromJson(json);

@override final  String strMeal;
@override final  String strMealThumb;
@override final  String idMeal;

/// Create a copy of ProductByCategoryModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductByCategoryModelCopyWith<_ProductByCategoryModel> get copyWith => __$ProductByCategoryModelCopyWithImpl<_ProductByCategoryModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProductByCategoryModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProductByCategoryModel&&(identical(other.strMeal, strMeal) || other.strMeal == strMeal)&&(identical(other.strMealThumb, strMealThumb) || other.strMealThumb == strMealThumb)&&(identical(other.idMeal, idMeal) || other.idMeal == idMeal));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,strMeal,strMealThumb,idMeal);

@override
String toString() {
  return 'ProductByCategoryModel(strMeal: $strMeal, strMealThumb: $strMealThumb, idMeal: $idMeal)';
}


}

/// @nodoc
abstract mixin class _$ProductByCategoryModelCopyWith<$Res> implements $ProductByCategoryModelCopyWith<$Res> {
  factory _$ProductByCategoryModelCopyWith(_ProductByCategoryModel value, $Res Function(_ProductByCategoryModel) _then) = __$ProductByCategoryModelCopyWithImpl;
@override @useResult
$Res call({
 String strMeal, String strMealThumb, String idMeal
});




}
/// @nodoc
class __$ProductByCategoryModelCopyWithImpl<$Res>
    implements _$ProductByCategoryModelCopyWith<$Res> {
  __$ProductByCategoryModelCopyWithImpl(this._self, this._then);

  final _ProductByCategoryModel _self;
  final $Res Function(_ProductByCategoryModel) _then;

/// Create a copy of ProductByCategoryModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? strMeal = null,Object? strMealThumb = null,Object? idMeal = null,}) {
  return _then(_ProductByCategoryModel(
strMeal: null == strMeal ? _self.strMeal : strMeal // ignore: cast_nullable_to_non_nullable
as String,strMealThumb: null == strMealThumb ? _self.strMealThumb : strMealThumb // ignore: cast_nullable_to_non_nullable
as String,idMeal: null == idMeal ? _self.idMeal : idMeal // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
