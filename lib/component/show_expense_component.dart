import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:spendtracker/providers/expense_list/expense_list_provider.dart';

class ShowExpenseComponent extends StatefulWidget {
  const ShowExpenseComponent({Key? key}) : super(key: key);

  @override
  State<ShowExpenseComponent> createState() => _ShowExpenseComponentState();
}

class _ShowExpenseComponentState extends State<ShowExpenseComponent> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView.builder(
          padding: const EdgeInsets.all(8),
          itemCount:
              context.watch<ExpenseListProvider>().state.expenseList.length,
          itemBuilder: (BuildContext context, int index) {
            return Text(context
                .watch<ExpenseListProvider>()
                .state
                .expenseList[index]
                .description);
          }),
    );
  }
}
