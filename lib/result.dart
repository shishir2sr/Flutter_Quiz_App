import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetState;
  const Result(this.resultScore, this.resetState);

  String get resultPhrese {
    var resultText;
    if (resultScore <= 8) {
      resultText = "Awesome!! You got $resultScore";
    } else if (resultScore <= 12) {
      resultText = "Pretty Likabel! You got $resultScore";
    } else {
      resultText = 'Good!! You got $resultScore';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Center(
            child: Text(resultPhrese),
          ),
          FlatButton(
            child: Text(
              "Reset",
              style: TextStyle(color: Colors.cyan),
            ),
            onPressed: resetState,
          )
        ],
      ),
    );
  }
}
