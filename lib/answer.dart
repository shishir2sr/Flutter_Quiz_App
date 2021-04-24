import 'package:flutter/material.dart';

class Answers extends StatelessWidget {
  final Function ar;
  final String cl;
  Answers(this.ar, this.cl);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        width: double.infinity,
        child: RaisedButton(
          child: Text(cl),
          onPressed: ar,
        ),
      ),
    );
  }
}
