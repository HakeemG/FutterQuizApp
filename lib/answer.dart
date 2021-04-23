import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String answerText;
  final Function pressMethod;

  Answer(
    this.answerText,
    this.pressMethod,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 2,
      margin: EdgeInsets.only(
        left: 10,
        right: 10,
      ),
      child: ElevatedButton(
        onPressed: pressMethod,
        child: Text(answerText),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
