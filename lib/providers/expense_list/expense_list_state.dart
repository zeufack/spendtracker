import 'package:equatable/equatable.dart';

import 'package:spendtracker/models/expense.dart';

class ExpenseListState extends Equatable {
  final List<Expense> expenseList;

  const ExpenseListState({
    required this.expenseList,
  });

  factory ExpenseListState.initial() {
    return ExpenseListState(expenseList: [
      Expense(
        id: 1,
        amount: 500,
        description: "manger pour vivre",
      )
    ]);
  }

  @override
  List<Object> get props => [expenseList];

  ExpenseListState copyWith({
    List<Expense>? expenseList,
  }) {
    return ExpenseListState(
      expenseList: expenseList ?? this.expenseList,
    );
  }

  @override
  String toString() => 'ExpenseListState(expenseList: $expenseList)';
}
