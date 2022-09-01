import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:spendtracker/pages/home.dart';
import 'package:spendtracker/providers/category_list/category_list_provider.dart';
import 'package:spendtracker/providers/expense_amount/expense_amount_provider.dart';
import 'package:spendtracker/providers/expense_list/expense_list_provider.dart';

void main() {
  runApp(const STracker());
}

class STracker extends StatelessWidget {
  const STracker({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider<ExpenseListProvider>(
            create: (context) => ExpenseListProvider(),
          ),
          ChangeNotifierProvider<CategoryListProvider>(
            create: (context) => CategoryListProvider(),
          ),
          ChangeNotifierProxyProvider<ExpenseListProvider,
                  ExpenseAmountProvider>(
              create: (context) => ExpenseAmountProvider(),
              update: (BuildContext buildContext,
                      ExpenseListProvider expenseListProvider,
                      ExpenseAmountProvider? expenseAmountProvider) =>
                  expenseAmountProvider!..update(expenseListProvider))
        ],
        child: MaterialApp(
          title: 'Expense Tracker',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: const HomePage(title: 'Expense Tracker'),
        ));
  }
}
