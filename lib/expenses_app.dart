import 'package:expenses_tracker/widgets/expenses_list.dart';
import 'package:flutter/material.dart';

import 'models/expense.dart';

class ExpensesApp extends StatefulWidget {
  const ExpensesApp({super.key});

  @override
  State<ExpensesApp> createState() => _ExpensesAppState();
}

class _ExpensesAppState extends State<ExpensesApp> {
  final List<Expense> _registeredExpensesList = [
    Expense(
      amount: 5,
      date: DateTime.now(),
      title: 'Burger',
      category: Category.food,
    ),
    Expense(
      amount: 20,
      date: DateTime(2026, 5, 10),
      title: 'Taxi',
      category: Category.travel,
    ),
    Expense(
      amount: 15,
      date: DateTime(2028, 3, 14),
      title: 'Cinema',
      category: Category.leisure,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: ExpensesList(expensesList: _registeredExpensesList),
      ),
    );
  }
}
