import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  static const questions = [
    {
      'questionText': 'what\'s is your fevourite color?',
      'answers': [
        {'text': 'Black', 'score': 9},
        {'text': 'Red', 'score': 3},
        {'text': 'Green', 'score': 7},
        {'text': 'White', 'score': 10},
      ]
    },
    {
      'questionText': 'what\'s is your fevourite animal?',
      'answers': [
        {'text': 'Rabit', 'score': 9},
        {'text': 'Cow' ,'score': 10},
        {'text': 'Dog', 'score': 7},
        {'text': 'fog', 'score': 4},
        ]
    },
    {
      'questionText': 'what is your fevoruit programmig language?',
      'answers': [
        {'text': 'Java', 'score': 8},
        {'text': 'Python', 'score': 15},
        {'text': 'R', 'score': 9},
        {'text': 'C#', 'score': 6},
        ]
    },
  ];
  var _questionIndex = 0;
  var totalScore = 0;
  void reset() {
    setState(() {
    _questionIndex = 0;
    totalScore = 0;
    });
   
  }
  void _answerQuestion(int score) {
    setState(() {
      if (_questionIndex < questions.length) {
        totalScore += score; 
        _questionIndex = _questionIndex + 1;
      } else {
        print("You have no more question");
      }
    });
  }

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My First App"),
        ),
        body: _questionIndex < questions.length
            ? Quiz(questions, _questionIndex, _answerQuestion)
            : Result(totalScore, reset),
      ),
    );
  }
}
