import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalScore;
  final Function restHandler;
  Result(this.totalScore, this.restHandler);

  String getResultPhrase() {
    if (totalScore > 5) {
      return 'You are awesome.\nyour score is ' + totalScore.toString();
    } else if (totalScore > 3) {
      return 'You are Good.\n Your score is ' + totalScore.toString();
    } else {
      return 'You just passed the target.\nYour score is ' +
          totalScore.toString();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            getResultPhrase(),
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            child: Text('Rest Quiz'),
            textColor: Colors.blue,
            onPressed: restHandler,
          )
        ],
      ),
    );
  }
}
