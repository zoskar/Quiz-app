import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int finalscore;
  final VoidCallback resetQuiz;

  Result(this.finalscore, this.resetQuiz);

  String get resultPhrase {
    String resultText;
    if (finalscore < 8) {
      resultText = 'You are awesome';
    } else {
      resultText = 'You are cool';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
          ),
          RaisedButton(onPressed: resetQuiz, child: Text('Retake quiz '))
        ],
      ),
    );
  }
}
