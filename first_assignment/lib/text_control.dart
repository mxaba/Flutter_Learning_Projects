import 'package:flutter/material.dart';
import './text_output.dart';

class TextControl extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createElement
    return _TextControlState();
  }
}

class _TextControlState extends State<TextControl> {
  String _mainText = 'This is a first assigment!';

  @override
  Widget build(BuildContext context) {
    return Column(
          children: [
            RaisedButton(
              child: Text('Change Text'),
              onPressed: () {
                setState(() {
                  _mainText = 'This text changed!';
                });
              },
            ),
            TextOutput(_mainText)
          ],
        );
  }
}