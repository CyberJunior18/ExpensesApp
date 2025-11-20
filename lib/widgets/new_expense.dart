import 'package:flutter/material.dart';

class NewExpense extends StatefulWidget {
  const NewExpense({super.key});

  @override
  State<NewExpense> createState() => _NewExpenseState();
}

class _NewExpenseState extends State<NewExpense> {
  String expenseTitle = '';
  void _saveExpenseTitle(String input) {
    expenseTitle = input;
  }

  final _titleController = TextEditingController();

  String expenseAmount = '';
  void _saveExpenseAmount(String input) {
    expenseTitle = input;
  }

  final _amountController = TextEditingController();
  @override
  void dispose() {
    _titleController.dispose();
    _amountController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          TextField(
            onChanged: _saveExpenseTitle,
            controller: _titleController,
            keyboardType: TextInputType.multiline,
            textInputAction: TextInputAction.newline,
            maxLength: 50,
            minLines: 1,
            maxLines: null,
            decoration: InputDecoration(label: Text("Expense Title")),
          ),
          TextField(
            onChanged: _saveExpenseAmount,
            controller: _amountController,
            decoration: InputDecoration(
              label: Text("Amount"),
              prefixText: "\$ ",
            ),
            keyboardType: TextInputType.number,
          ),
          Row(
            children: [
              ElevatedButton(
                onPressed: () {
                  print(expenseTitle);
                  print(expenseAmount);
                },
                child: Text("Save Expense"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
