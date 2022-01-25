import 'package:flutter/material.dart';
import '../utils.dart';
import '../routes.dart';
import '../content-box.dart';

class GamesHistoryScreen extends StatelessWidget {
  const GamesHistoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFBFBFB),
      appBar: AppBar(
        title: const Text('Games history'),
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
              child: Text('Games History Screen'),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(20.0),
            child: ElevatedButton(
              child: const Text('View Game'),
              onPressed: () {
                Utils.goToScreen(context, Routes.viewGameScreen);
              },
            ),
          ),
        ],
      ),
    );
  }
}
