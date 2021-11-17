import 'package:flutter/material.dart';
class Score extends StatefulWidget {
  int scoreValue;
   Score({Key? key,required this.scoreValue}) : super(key: key);

  @override
  _ScoreState createState() => _ScoreState();
}

class _ScoreState extends State<Score> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Your Final Score: ${widget.scoreValue}"),
      ),
    );
  }
}
