import 'package:flutter/material.dart';
import '../utils.dart';
import '../content-box.dart';
import 'view-game-screen.dart';

class GameSetupScreen extends StatelessWidget {
  const GameSetupScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFBFBFB),
      appBar: AppBar(
        title: const Text('Start a new game'),
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
              child: Text('Game Setup Screen'),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(20.0),
            child: ElevatedButton(
              child: const Text('View Game'),
              onPressed: () {
                Utils.goToScreen(context, ViewGameScreen());
              },
            ),
          ),
        ],
      ),
    );
  }
}
