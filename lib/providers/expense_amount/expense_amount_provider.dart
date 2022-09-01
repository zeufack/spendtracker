import 'package:flutter/cupertino.dart';
import 'package:spendtracker/providers/expense_amount/expense_amount_state.dart';
import 'package:spendtracker/providers/expense_list/expense_list_provider.dart';

class ExpenseAmountProvider with ChangeNotifier {
  final ExpenseAmountState _state = ExpenseAmountState.initial();

  ExpenseAmountState get state => _state;

  void update(ExpenseListProvider expenseListProvider) {
    // TODO add filter to the update function
    int amount = 0;
    for (var expense in expenseListProvider.state.expenseList) {
      amount = amount + expense.amount;
    }
    _state.copyWith(expenseAmount: amount);
    notifyListeners();
  }
}
