import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final String questionText;
  final List<Map<String, Object>> answers;
  final Function pressFunction;

  Quiz(this.questionText, this.answers, this.pressFunction);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Question(questionText),
          ...(answers)
              .map((answer) {
            return Answer(
              answer['answer'],
              () => pressFunction(answer['score']),
            );
          }).toList(),
        ],
      ),
    );
  }
}
