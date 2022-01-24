import 'package:flutter/material.dart';
import '../utils.dart';

class SubmitScoreScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Round #1 score'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          const Text(
            'Submit Score Screen',
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
