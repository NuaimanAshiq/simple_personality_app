import 'package:flutter/material.dart';
import 'package:simple_personality_app/quiz.dart';
import 'package:simple_personality_app/result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questions = [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': [
        {'text': 'Green', 'score': 2},
        {'text': 'White', 'score': 4},
        {'text': 'Red', 'score': 6},
        {'text': 'Black', 'score': 8},
      ],
    },
    {
      'questionText': 'Whats\'s your favorite animal?',
      'answers': [
        {'text': 'Rabbit', 'score': 2},
        {'text': 'Elephant', 'score': 4},
        {'text': 'Tiger', 'score': 6},
        {'text': 'Snake', 'score': 8},
      ],
    },
    {
      'questionText': 'Who\'s your favorite instructor?',
      'answers': [
        {'text': 'Nuaiman', 'score': 2},
        {'text': 'Angela', 'score': 4},
        {'text': 'Max', 'score': 6},
        {'text': 'Andrea', 'score': 8},
      ],
    },
  ];

  int _questionIndex = 0;

  int _totalScore = 0;

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex++;
    });
  }

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      title: 'SP Quiz',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Personality Quiz'),
          elevation: 0.0,
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                questions: _questions,
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
              )
            : Result(
                questionIndex: _questionIndex,
                resetQuiz: _resetQuiz,
                totalScore: _totalScore,
              ),
      ),
    );
  }
}
