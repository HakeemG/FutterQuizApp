import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int _score;
  final Function _reset;

  Result(
    this._score,
    this._reset,
  );
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "Your Score is: " + _score.toString(),
            style: TextStyle(
              fontSize: 46,
            ),
            textAlign: TextAlign.center,
          ),
          Container(
            width: MediaQuery.of(context).size.width / 2,
            margin: EdgeInsets.only(
              left: 10,
              right: 10,
            ),
            child: ElevatedButton(
              onPressed: _reset,
              child: Text("Reset"),
            ), // This trailing comma makes auto-formatting nicer for build methods.
          ),
        ],
      ),
    );
  }
}
