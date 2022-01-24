import 'package:flutter/material.dart';
import '../content-box.dart';

class SubmitScoreScreen extends StatelessWidget {
  const SubmitScoreScreen({Key? key}) : super(key: key);

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
        children: const <Widget>[
          SizedBox(
            height: 30.0,
          ),
          Expanded(
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
