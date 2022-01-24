import 'package:flutter/material.dart';
import '../utils.dart';
import '../content-box.dart';

class SubmitScoreScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFBFBFB),
      appBar: AppBar(
        title: const Text('Round #1 score'),
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
              child: Text('Submit Score Screen'),
            ),
          ),
          SizedBox(
            height: 30.0,
          ),
        ],
      ),
    );
  }
}
