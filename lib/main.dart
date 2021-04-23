import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _qIndex = 0;
  int _totalScore = 0;

  static const questions = [
    {
      'questionText': 'What\'s your Name?',
      'answers': [
        {
          'answer': 'Hakeem',
          'score': 3,
        },
        {
          'answer': 'Aleya',
          'score': 2,
        },
        {
          'answer': 'Lydia',
          'score': 1,
        },
      ],
    },
    {
      'questionText': 'What\'s your Age?',
      'answers': [
        {
          'answer': '30',
          'score': 3,
        },
        {
          'answer': '29',
          'score': 2,
        },
        {
          'answer': '27',
          'score': 1,
        },
      ],
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': [
        {
          'answer': 'Dog',
          'score': 3,
        },
        {
          'answer': 'Cat',
          'score': 1,
        },
      ],
    },
    {
      'questionText': 'What\'s your dog\'s name?',
      'answers': [
        {
          'answer': 'Legend',
          'score': 4,
        },
        {
          'answer': 'Blaze',
          'score': 3,
        },
        {
          'answer': 'Bell',
          'score': 2,
        },
        {
          'answer': 'Wonder',
          'score': 1,
        },
      ],
    },
  ];

  void _nextQuestion(int score) {
    setState(() {
      _qIndex++;
      _totalScore += score;
      print(_totalScore);
    });
  }

  void _reset() {
    setState(
      () {
        _qIndex = 0;
        _totalScore = 0;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: _qIndex < questions.length
          ? Quiz(
              questions[_qIndex]['questionText'],
              questions[_qIndex]['answers'],
              _nextQuestion,
            )
          : Result(
              _totalScore,
              () => _reset(),
            ),
    );
  }
}
