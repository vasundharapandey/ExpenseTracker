import 'package:expensetracker/widgets/expenses_list/expenses_list.dart';
import 'package:flutter/material.dart';
import '../models/expense.dart';
class Expenses extends StatefulWidget {
  const Expenses({super.key});

  @override
  State<Expenses> createState() {
    return _ExpensesState();
  }
}

class _ExpensesState extends State<Expenses> {
  final List<Expense> _registeredExpenses = [
    Expense(title: 'Flutter Course',amount: 1200.0,date:DateTime.now(),category: Category.work, ),
     Expense(title: 'Cinema',amount: 12.6,date:DateTime.now(),category: Category.leisure, ),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text('The Chart'),
        Expanded(child: ExpensesList(expenses: _registeredExpenses)),
        ],
      ),
    );
  }
}
