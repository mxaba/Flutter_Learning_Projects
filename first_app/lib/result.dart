import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resulstScore;
  final Function resetHandler;

  Result(this.resulstScore, this.resetHandler);

  String get resultPhase {
    String resultText;

    if (resulstScore <= 8) {
      resultText = 'You are awesome and innocent!';
    } else if (resulstScore <= 12) {
      resultText = 'You are Pretty likable!';
    } else if (resulstScore <= 16) {
      resultText = 'You are Strange!';
    } else {
      resultText = 'You are so bad!';
    }

    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            textColor: Colors.blue,
            onPressed: resetHandler, 
            child: Text(
              'Restart Quize!'
              ),
            ),
        ],
      ),
    );
  }
}
