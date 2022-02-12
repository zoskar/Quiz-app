import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  String question;

  Question(this.question);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        margin: EdgeInsets.all(5),
        child: Text(
          question,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 20),
        ));
  }
}
