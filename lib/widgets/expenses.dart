import 'package:expensetracker/widgets/expenses_list/expenses_list.dart';
import 'package:expensetracker/widgets/new_expense.dart';
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
  _openAddExpenseOverlay(){
    showModalBottomSheet(context: context, builder: (ctx)=>const NewExpense(),

      //return NewExpense(onAddExpense: _addExpense);
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Expense Tracker"),
        actions: [
          IconButton(onPressed: _openAddExpenseOverlay, icon: const Icon(Icons.add))
        ],
      ),
      body: Column(
        children: [
          Text('The Chart'),
        Expanded(child: ExpensesList(expenses: _registeredExpenses)),
        ],
      ),
    );
  }
}
