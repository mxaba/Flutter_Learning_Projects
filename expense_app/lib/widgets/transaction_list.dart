import 'package:flutter/material.dart';
import '../models/transaction.dart';
import 'package:intl/intl.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> transaction;

  TransactionList(this.transaction);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: transaction.isEmpty ? Column(children: [
        Text(
          'No transection added yet!',
          style: Theme.of(context).textTheme.title,
        ),
        SizedBox(
          height: 10
        ),
        Container(
          height: 200,
          child: Image.asset(
            'assets/images/me.jpeg',
            fit: BoxFit.cover,
          ),
        ),
      ],) : ListView.builder(
        itemBuilder: (ctx, index) {
          return Card(
            child: Row(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.symmetric(
                    horizontal: 15,
                    vertical: 10,
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Theme.of(context).primaryColorDark,
                      width: 2,
                    ),
                  ),
                  padding: EdgeInsets.all(10),
                  child: Text(
                    'R${transaction[index].amount.toStringAsFixed(2)}',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Theme.of(context).primaryColorDark,
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      transaction[index].title,
                      style: Theme.of(context).textTheme.title,
                    ),
                    Text(
                      DateFormat.yMMMd().format(transaction[index].date),
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ); 
        },
        itemCount: transaction.length,
      ),
    );
  }
}
