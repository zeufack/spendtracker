import 'package:equatable/equatable.dart';

class ExpenseAmountState extends Equatable {
  final int expenseAmount;

  const ExpenseAmountState({
    required this.expenseAmount,
  });

  factory ExpenseAmountState.initial() {
    return const ExpenseAmountState(expenseAmount: 0);
  }

  ExpenseAmountState copyWith({
    int? expenseAmount,
  }) {
    return ExpenseAmountState(
      expenseAmount: expenseAmount ?? this.expenseAmount,
    );
  }

  @override
  String toString() => 'ExpenseAmountState(expenseAmount: $expenseAmount)';

  @override
  List<Object> get props => [expenseAmount];
}
