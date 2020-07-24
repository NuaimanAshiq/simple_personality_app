import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;
  Question(this.questionText);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20.0),
      child: Container(
        margin: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          color: Colors.pink,
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Text(
            questionText,
            style: TextStyle(fontSize: 26.0, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
