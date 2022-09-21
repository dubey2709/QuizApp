import 'package:flutter/material.dart';
import 'package:quiz_app/main.dart';

class Score extends StatelessWidget {
  Score(this.score, this.time);
  final int score;
  final Duration time;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            Colors.blueAccent,
            Colors.indigo,
            Colors.purple,
          ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
        ),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'End of the Quiz!',
                style: TextStyle(
                    fontSize: 40, color: Colors.white, fontFamily: 'Lobster'),
              ),
              SizedBox(height: 15),
              Text(
                'RESULT',
                style: TextStyle(
                    fontSize: 80,
                    color: Colors.white,
                    fontFamily: 'Bebas_Neue'),
              ),
              SizedBox(height: 15),
              Text(
                'Your Score is ${score}/10\n\n Time : 0${(time.inSeconds / 60).floor()} : ${time.inSeconds % 60} ',
                style: TextStyle(fontSize: 30, color: Colors.white),
              ),
              SizedBox(height: 80),
              MaterialButton(
                elevation: 15.00,
                padding: EdgeInsets.all(10),
                color: Colors.white,
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => MyHomePage('QUIZERIA')));
                },
                child: Text(
                  'Take the Quiz Again',
                  style: TextStyle(fontSize: 30),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
