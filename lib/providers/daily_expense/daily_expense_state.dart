import 'package:equatable/equatable.dart';

class DailyExpenseState extends Equatable {
  final int dayliExpense;
  const DailyExpenseState({
    required this.dayliExpense,
  });

  factory DailyExpenseState.initial() {
    return const DailyExpenseState(dayliExpense: 0);
  }

  @override
  List<Object> get props => [dayliExpense];

  @override
  String toString() => 'DailyExpenseState(dayliExpense: $dayliExpense)';

  DailyExpenseState copyWith({
    int? dayliExpense,
  }) {
    return DailyExpenseState(
      dayliExpense: dayliExpense ?? this.dayliExpense,
    );
  }
}
