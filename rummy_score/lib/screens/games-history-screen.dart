import 'package:flutter/material.dart';
import '../utils.dart';
import 'view-game-screen.dart';

class GamesHistoryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Games history'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          const Text(
            'Games History Screen',
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 10.0,
          ),
          ElevatedButton(
            child: const Text('View Game'),
            onPressed: () {
              Utils.goToScreen(context, ViewGameScreen());
            },
          ),
        ],
      ),
    );
  }
}
