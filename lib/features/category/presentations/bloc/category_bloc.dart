import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../domain/entities/category_entity.dart';
import '../../domain/usecases/get_categories.dart';

part 'category_event.dart';
part 'category_state.dart';

class CategoryBloc extends Bloc<CategoryEvent, CategoryState> {
  final GetCategories getCategories;

  CategoryBloc({required this.getCategories}) : super(CategoryInitial()) {
    on<CategoryLoadEvent>(_onCategoryLoadEvent);
  }

  void _onCategoryLoadEvent(
    CategoryLoadEvent event,
    Emitter<CategoryState> emit,
  ) async {
    emit(CategoryLoading());
    try {
      final categories = await getCategories(event.category);
      emit(CategoryLoaded(categories: categories));
    } catch (e) {
      emit(CategoryError(e.toString()));
    }
  }
}
