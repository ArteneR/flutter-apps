import 'package:flutter/material.dart';
import '../utils.dart';

class SubmitScoreScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          const Text(
            'Submit Score Screen',
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 10.0,
          ),
          ElevatedButton(
            child: const Text('Go Back'),
            onPressed: () {
              Utils.goToPreviousScreen(context);
            },
          )
        ],
      ),
    );
  }
}
