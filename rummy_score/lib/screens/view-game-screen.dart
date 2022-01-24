import 'package:flutter/material.dart';
import '../utils.dart';
import 'submit-score-screen.dart';

class ViewGameScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Game #1'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          const Text(
            'View Game Screen',
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 10.0,
          ),
          ElevatedButton(
            child: const Text('Submit Score'),
            onPressed: () {
              Utils.goToScreen(context, SubmitScoreScreen());
            },
          ),
        ],
      ),
    );
  }
}
