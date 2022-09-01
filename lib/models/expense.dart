class Expense {
  final int id;
  final int amount;
  final String description;
  final DateTime date;

  Expense(
      {required this.id,
      required this.amount,
      required this.description,
      DateTime? date})
      : this.date = date ?? DateTime.now();
}
