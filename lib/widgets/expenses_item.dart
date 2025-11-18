import 'package:expenses_tracker/models/expense.dart';
import 'package:flutter/material.dart';

class ExpenseItem extends StatelessWidget {
  const ExpenseItem({super.key, required this.expense});
  final Expense expense;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        child: Column(
          children: [
            Text(expense.title),
            SizedBox(height: 4),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('\$${expense.amount.toStringAsFixed(2)}'),
                Row(
                  children: [
                    Icon(Icons.category),
                    SizedBox(width: 8),
                    Text(
                      '${expense.date.day}/${expense.date.month}/${expense.date.year}',
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
