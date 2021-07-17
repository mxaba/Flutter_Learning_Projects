import 'package:flutter/material.dart';
import '../widgets/new_transaction.dart';
import '../models/transaction.dart';
import '../widgets/transaction_list.dart';

class UseTransactions extends StatefulWidget {
  // const UseTransactions({ Key? key }) : super(key: key);

  @override
  _UseTransactionsState createState() => _UseTransactionsState();
}

class _UseTransactionsState extends State<UseTransactions> {
  final List<Transaction> _userTransactions = [
    Transaction(
        id: 'mcb', title: 'Eletricity', amount: 50.99, date: DateTime.now()),
    Transaction(
        id: 'OS',
        title: 'Weekly Groceries',
        amount: 998.99,
        date: DateTime.now()),
  ];

  void _addNewTransaction(String title, double amount) {
    final newTran = Transaction(
        id: DateTime.now().toString(),
        title: title,
        amount: amount,
        date: DateTime.now());

    setState(() {
      _userTransactions.add(newTran);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        NewTransaction(_addNewTransaction),
        TransactionList(_userTransactions),
      ],
    );
  }
}
