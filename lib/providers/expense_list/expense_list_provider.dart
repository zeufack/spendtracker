import 'package:flutter/cupertino.dart';
import 'package:spendtracker/providers/expense_list/expense_list_state.dart';

class ExpenseListProvider with ChangeNotifier {
  final ExpenseListState _state = ExpenseListState.initial();

  ExpenseListState get state => _state;

  void addExpense() {
    notifyListeners();
  }

  void editExpense() {
    notifyListeners();
  }

  void deletExpense() {
    notifyListeners();
  }
}
