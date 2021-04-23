import 'package:flutter/material.dart';
import 'Questions.dart';
import 'answer.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  MyApp({Key key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var questionState = 0;
  void _answerQuestion() {
    setState(() {
      questionState += 1;
    });
  }

  var questions = [
    'What is your name?',
    'What is your fathers name?',
    'What did you do to me?'
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Quize"),
        ),
        body: Column(children: <Widget>[
          Questions(questions[questionState]),
          Answers(
              _answerQuestion, Colors.greenAccent), //Answers class constractor
          Answers(_answerQuestion, Colors.blue), //Answers class constractor
          Answers(_answerQuestion, Colors.orange), //Answers class constractor
        ]),
      ),
    );
  }
}
