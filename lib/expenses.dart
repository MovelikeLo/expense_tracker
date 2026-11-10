//expenses
import 'package:expense_tracker/expenses_list.dart';
import 'package:expense_tracker/models/expense.dart';
import 'package:flutter/material.dart';

class Expenses extends StatefulWidget{
  const Expenses({super.key});
  
  @override
  State<Expenses> createState() {
    return _ExpensesState();
  }
}

class _ExpensesState extends State<Expenses>{
final List<Expense> registeredExpenses = [
  Expense(
    title: 'Cheese Burger',
    amount: 11.99,
    date: DateTime.now(),
    category: Category.food,
  ),
  Expense(
    title: 'The Odyssey Movie',
    amount: 20.0,
    date: DateTime.now(),
    category: Category.leisure,
  ),
  Expense(
    title: 'Seafood Bowl',
    amount: 50.0,
    date: DateTime.now(),
    category: Category.food,
  ),
];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text('Chart Here...'),
          Expanded(child: ExpensesList(expenses: registeredExpenses)),
        ],
      ),
    );
  }
}