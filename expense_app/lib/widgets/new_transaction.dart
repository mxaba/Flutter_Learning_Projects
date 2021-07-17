import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final Function addTran;
  final titleController = TextEditingController();
  final amountController = TextEditingController();
  NewTransaction(this.addTran);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            TextField(
              decoration: InputDecoration(
                labelText: 'Title',
              ),
              controller: titleController,
              // onChanged: (value) {
              //   titleInput = value;
              // },
            ),
            TextField(
              decoration: InputDecoration(
                labelText: 'Amount',
              ),
              controller: amountController,
              // onChanged: (value) {
              //   amountInput = value;
              // },
            ),
            FlatButton(
              textColor: Colors.purple,
              onPressed: () {
                addTran(
                  titleController.text,
                  double.parse(amountController.text),
                );
              },
              child: Text('Add Transaction'),
            )
          ],
        ),
      ),
    );
  }
}
