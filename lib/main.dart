import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalScore = 0;

  final _questions = [
    {
      'questionText': 'What\'s your favourite color?',
      'answers': [
        {'text': 'Black', 'score': 5},
        {'text': 'Red', 'score': 3},
        {'text': 'Green', 'score': 3},
        {'text': 'White', 'score': 1},
      ]
    },
    {
      'questionText': 'What\'s your favourite pet?',
      'answers': [
        {'text': 'Cat', 'score': 1},
        {'text': 'Dog', 'score': 1},
        {'text': 'Fish', 'score': 5},
        {'text': 'Snake', 'score': 5},
      ]
    },
    {
      'questionText': 'What\'s your favourite programming language?',
      'answers': [
        {'text': 'Python', 'score': 1},
        {'text': 'Java', 'score': 1},
        {'text': 'C++', 'score': 1},
        {'text': 'C', 'score': 1},
      ]
    },
  ];

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _questionIndex += 1;
    setState(() {
      _totalScore += score;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text(
              'Nauka Fluttera',
              textAlign: TextAlign.center,
            ),
          ),
          body: _questionIndex < _questions.length
              ? Quiz(
                  answerQuestion: _answerQuestion,
                  questionIndex: _questionIndex,
                  questions: _questions,
                )
              : Result(_totalScore, _resetQuiz)),
    );
  }
}
