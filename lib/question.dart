import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String sampleQuestion;

  Question(this.sampleQuestion);

  @override
  Widget build(BuildContext context) {

    return Container(
      width: double.infinity,
        margin: EdgeInsets.all(15),
        child: Text(
      sampleQuestion,
      style: TextStyle(fontSize: 28),
      textAlign: TextAlign.center,
    ));
  }
}
