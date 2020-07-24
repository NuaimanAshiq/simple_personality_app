import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int questionIndex;
  final int totalScore;
  final Function resetQuiz;
  Result({this.questionIndex, this.resetQuiz, this.totalScore});

  get resultPhrase {
    var resultPhrase = '';
    if (totalScore < 6) {
      return resultPhrase = 'You are sweet!';
    } else if (totalScore < 8) {
      return resultPhrase = 'You Okay!?';
    } else if (totalScore < 16) {
      return resultPhrase = 'You dumb!';
    } else {
      resultPhrase = 'You bad!';
    }
    return resultPhrase;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 26.0),
          ),
          SizedBox(height: 30.0),
          RaisedButton(
            child: Text('Reset Quiz'),
            color: Colors.orange,
            textColor: Colors.white,
            onPressed: resetQuiz,
          )
        ],
      ),
    );
  }
}
