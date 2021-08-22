import 'package:flutter/material.dart';
import './transaction_item.dart';
import '../models/transaction.dart';
import 'package:intl/intl.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> transaction;
  final Function deleteTran;

  TransactionList(this.transaction, this.deleteTran);

  @override
  Widget build(BuildContext context) {
    print("build() TractionList");
    return transaction.isEmpty
        ? LayoutBuilder(
            builder: (context, constrainsts) {
              return Column(
                children: [
                  Text(
                    'No transection added yet!',
                    style: Theme.of(context).textTheme.title,
                  ),
                  const SizedBox(height: 10),
                  Container(
                    height: constrainsts.maxHeight * 0.6,
                    child: Image.asset(
                      'assets/images/me.jpeg',
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              );
            },
          )
        : ListView (children: 
              transaction.map((tx) => TransactionItem( key: ValueKey(tx.id), transaction: tx, deleteTran: deleteTran)).toList()
          );
  }
}

