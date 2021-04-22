import 'package:flutter/material.dart';

class Questions extends StatelessWidget {
  final String questionText;
  const Questions(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Text(questionText);
  }
}
