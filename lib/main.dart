// ignore_for_file: avoid_print, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_course_demo/result.dart';

import './quiz.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _qIndex = 0;
  var _totalScore = 0;
  void answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _qIndex++;
    });
    print('answer choosen $_qIndex');
  }

  void reset() {
    setState(() {
      _qIndex = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      {
        'question': 'what\'s your favorite Color?',
        'answer': [
          {'text': 'red', 'score': 1},
          {'text': 'green', 'score': 2},
          {'text': 'red', 'score': 3},
        ],
      },
      {
        'question': 'what\'s your favorite country?',
        'answer': [
          {'text': 'us', 'score': 1},
          {'text': 'uk', 'score': 2},
          {'text': 'canada', 'score': 3},
        ],
      },
      {
        'question': 'what\'s your favorite food?',
        'answer': [
          {'text': 'beef biryani', 'score': 1},
          {'text': 'mutton biryani', 'score': 2},
          {'text': 'chicken biryani', 'score': 3},
        ],
      }
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('First Flutter App'),
        ),
        body: _qIndex < questions.length
            ? Quiz(questions, _qIndex, answerQuestion)
            : Result(_totalScore, reset),
      ),
    );
  }
}
