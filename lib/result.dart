import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalScore;
  final Function reset;
  Result(this.totalScore, this.reset);
  String get resultScore {
    return 'your score is ' + totalScore.toString();
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Center(
          child: Text(resultScore,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
          
          ),
          FlatButton(
            child: Text("reset"),
            textColor: Colors.blueAccent,
            onPressed: reset,
          )
      ],
    ); 
  }
}