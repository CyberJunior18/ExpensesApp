import 'package:intl/intl.dart';
import 'package:uuid/uuid.dart';

class Expense {
  Expense({
    required this.title,
    required this.amount,
    required this.date,
    required this.category,
  });

  final String id = Uuid().v4();
  final String title;
  final double amount;
  final DateTime date;
  Category category;

  String get formattedDate {
    return DateFormat.yMd().format(date);
  }
}

enum Category { food, work, leisure, travel }
