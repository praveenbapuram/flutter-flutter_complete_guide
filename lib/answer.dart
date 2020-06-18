import 'package:flutter/material.dart';

class Answer extends StatelessWidget {

  final Function handler;
  final String buttonText;
  Answer(this.handler, this.buttonText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blue,
        textColor: Colors.white,
        child: Text(buttonText),
        onPressed: handler),
    );
  }
}