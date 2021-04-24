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
  var _questionState = 0;
  void _answerQuestion() {
    setState(() {
      _questionState += 1;
    });
  }

  var questions = [
    {
      'questions': 'What is your name?',
      'answers': ['Tusher', 'Emon', 'Rifat', 'Ekramul']
    },
    {
      'questions': 'Where do you live?',
      'answers': ['Tusher', 'Emon', 'Rifat']
    },
    {
      'questions': 'What time is it now?',
      'answers': ['Tusher', 'Emon']
    }
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Quize"),
        ),
        body: Column(children: <Widget>[
          Questions(questions[_questionState]['questions']),
          ...(questions[_questionState]['answers'] as List<String>)
              .map((answer) => Answers(_answerQuestion, answer))
        ]),
      ),
    );
  }
}
