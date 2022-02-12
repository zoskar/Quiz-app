import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final Function(int) answerQuestion;
  
  final List<Map<String, Object>> questions;
  final int questionIndex;

  Quiz(
      {required this.questions,
      required this.answerQuestion,
      required this.questionIndex});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(questions[questionIndex]['questionText'] as String),
        // as String - zła praktyka, wymaga poprawnej listy pytań
        ...(questions[questionIndex]['answers'] as List<Map<String, dynamic >> )
        // ... rozpakowanie listy
            .map((answer) {
              return Answer(()=>answerQuestion(answer['score']! ), answer['text'] as String );
              }).toList()
      ],
    );
  }
}
