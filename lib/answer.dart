import 'package:flutter/material.dart';

class Answers extends StatelessWidget {
  final Function ar;
  final Color cl;
  Answers(this.ar, this.cl);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        width: double.infinity,
        child: RaisedButton(
          child: Text('Question 2'),
          color: cl,
          onPressed: ar,
        ),
      ),
    );
  }
}
