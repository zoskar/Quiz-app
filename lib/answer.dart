import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback handler;
  final String answerText;

  Answer(this.handler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.lightBlue,
        textColor: Colors.white,
        child: Text(
          answerText,
          style: TextStyle(fontSize: 20),
        ),
        onPressed: handler,
      ),
    );
  }
}
