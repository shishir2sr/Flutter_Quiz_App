import 'package:flutter/material.dart';
import 'Questions.dart';

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

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What is your name?',
      'What is your fathers name?',
      'What did you do to me?'
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Quize"),
        ),
        body: Column(children: <Widget>[
          Questions(questions[questionState]),
          RaisedButton(
            onPressed: _answerQuestion,
            child: Text('Question 1'),
          ),
          RaisedButton(
            onPressed: _answerQuestion,
            child: Text('Question 2'),
          ),
          RaisedButton(
            onPressed: _answerQuestion,
            child: Text('Question 3'),
          ),
        ]),
      ),
    );
  }
}
