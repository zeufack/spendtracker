import 'package:flutter/cupertino.dart';
import 'package:spendtracker/providers/category_list/category_list_state.dart';

class CategoryListProvider with ChangeNotifier {
  final CategoryListState _state = CategoryListState.initiale();

  CategoryListState get state => _state;

  void addCategory() {
    notifyListeners();
  }

  void editCategory() {
    notifyListeners();
  }

  void deleteCategory() {
    notifyListeners();
  }
}
