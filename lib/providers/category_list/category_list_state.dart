import 'package:equatable/equatable.dart';

import 'package:spendtracker/models/category.dart';

class CategoryListState extends Equatable {
  final List<Category> categoryList;

  const CategoryListState({
    required this.categoryList,
  });

  factory CategoryListState.initiale() {
    return const CategoryListState(categoryList: [
      Category(id: 1, descritption: 'la tchop', images: 'juste une image')
    ]);
  }

  @override
  List<Object> get props => [categoryList];

  @override
  String toString() => 'CategoryListState(categoryList: $categoryList)';
}
