import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'answer.dart';
import 'Questions.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionState;
  final Function answerQuestion;
  const Quiz({this.questions, this.answerQuestion, this.questionState});

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Questions(questions[questionState]['questionText']),
      ...(questions[questionState]['answers'] as List<Map<String, Object>>)
          .map((answer) =>
              Answers(() => answerQuestion(answer['score']), answer['text']))
          .toList()
    ]);
  }
}
