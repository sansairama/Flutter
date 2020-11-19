import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyappState();
  }
}

class _MyappState extends State<Myapp> {
  var quesindex = 0;
  int total = 0;
  void reset() {
    setState(() {
      quesindex = 0;
      total = 0;
    });
  }

  void answers(int score) {
    total += score;
    setState(() {
      quesindex = quesindex + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      {
        'question_text': "What's your favourite color?",
        'answered': [
          {'text': 'blue', 'score': 10},
          {'text': 'black', 'score': 15},
          {'text': 'grey', 'score': 20},
          {'text': 'yellow', 'score': 2},
        ],
      },
      {
        'question_text': "What's your favourite animal?",
        'answered': [
          {'text': 'tiger', 'score': 10},
          {'text': 'dog', 'score': 15},
          {'text': 'cat', 'score': 20},
          {'text': 'whale', 'score': 12},
        ],
      },
      {
        'question_text': "What's your favourite game?",
        'answered': [
          {'text': 'cricket', 'score': 10},
          {'text': 'football', 'score': 20},
          {'text': 'tennis', 'score': 13},
          {'text': 'carrrom', 'score': 14},
        ],
      },
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My first app'),
        ),
        body: quesindex < questions.length
            ? quiz(
                answers: answers,
                quesindex: quesindex,
                questions: questions,
              )
            : result(total, reset),
      ),
    );
  }
}
