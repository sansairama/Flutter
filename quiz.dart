import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int quesindex;
  final Function answers;
  quiz({
    @required this.answers,
    @required this.quesindex,
    @required this.questions,
  });
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      question(
        questions[quesindex]['question_text'],
      ),
      ...(questions[quesindex]['answered'] as List<Map<String, Object>>)
          .map((a) {
        return answer(() => answers(a['score']), a['text']);
      }).toList()
    ]);
  }
}
