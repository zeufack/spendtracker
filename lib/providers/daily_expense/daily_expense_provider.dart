import 'package:flutter/cupertino.dart';
import 'package:spendtracker/providers/daily_expense/daily_expense_state.dart';

class DailyExpenseProvider with ChangeNotifier {
  final DailyExpenseState _state = DailyExpenseState.initial();

  DailyExpenseState get state => _state;


  void update(){}
}
