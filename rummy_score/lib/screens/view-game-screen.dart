import 'package:flutter/material.dart';
import '../utils.dart';
import '../content-box.dart';
import 'submit-score-screen.dart';

class ViewGameScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFBFBFB),
      appBar: AppBar(
        title: const Text('Game #1'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          const SizedBox(
            height: 30.0,
          ),
          const Expanded(
            child: ContentBox(
              child: Text('View Game Screen'),
            ),
          ),
          Container(
            margin: EdgeInsets.all(20.0),
            child: ElevatedButton(
              child: const Text('Submit Score'),
              onPressed: () {
                Utils.goToScreen(context, SubmitScoreScreen());
              },
            ),
          ),
        ],
      ),
    );
  }
}
