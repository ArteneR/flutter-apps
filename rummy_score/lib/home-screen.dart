// ignore_for_file: avoid_print, prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          child: Container(
            color: Colors.red.shade900,
            child: const Text('Top'),
          ),
        ),
        Expanded(
          child: Container(
            padding: EdgeInsets.fromLTRB(20, 40, 20, 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    generateButton(
                      'Start a new game',
                      () => startNewGame(),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    generateButton(
                      'View games history',
                      () => viewGamesHistory(),
                    ),
                  ],
                ),
                Column(
                  children: <Widget>[
                    Text('Designed & developed by ArteneR.'),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text('Version: 1.0'),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  ElevatedButton generateButton(String label, VoidCallback onPressed) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Container(
        width: double.infinity,
        child: Text(
          label,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }

  void startNewGame() {
    print('Start a new game...');
  }

  void viewGamesHistory() {
    print('View games history...');
  }
}
