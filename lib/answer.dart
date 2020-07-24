import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  final String answerText;
  Answer(this.selectHandler, this.answerText);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Container(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: RaisedButton(
            onPressed: selectHandler,
            child: Text(answerText),
            color: Colors.blue,
            textColor: Colors.white,
          ),
        ),
      ),
    );
  }
}
