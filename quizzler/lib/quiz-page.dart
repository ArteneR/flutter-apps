// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'quiz-brain.dart';

QuizBrain quizBrain = QuizBrain();

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  List<Icon> scoreKeeper = [];

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 5,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                quizBrain.getQuestionText(),
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: generateButton(
              'True',
              Colors.green,
              () => answerQuestion(true),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: generateButton(
              'False',
              Colors.red,
              () => answerQuestion(false),
            ),
          ),
        ),
        Row(children: scoreKeeper),
      ],
    );
  }

  TextButton generateButton(String label, Color color, VoidCallback onPressed) {
    return TextButton(
      child: Text(label),
      style: TextButton.styleFrom(
        backgroundColor: color,
      ),
      onPressed: onPressed,
    );
  }

  void answerQuestion(bool answer) {
    bool correctAnswer = quizBrain.getCorrectAnswer();

    setState(() {
      if (answer == correctAnswer) {
        scoreKeeper.add(
          Icon(
            Icons.check,
            color: Colors.green,
          ),
        );
      } else {
        scoreKeeper.add(
          Icon(
            Icons.close,
            color: Colors.red,
          ),
        );
      }

      if (quizBrain.isFinished()) {
        showFinishAlert();
      } else {
        quizBrain.nextQuestion();
      }
    });
  }

  void showFinishAlert() {
    Alert(
      context: context,
      type: AlertType.success,
      title: "CONGRATULATIONS",
      desc: "You have finished the quizz!",
      style: AlertStyle(
        isCloseButton: false,
      ),
      buttons: [
        DialogButton(
          child: Text(
            "Finish",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          onPressed: () => {
            setState(() {
              quizBrain.reset();
              scoreKeeper = [];
            }),
            Navigator.pop(context),
          },
          width: 200,
        )
      ],
    ).show();
  }
}
