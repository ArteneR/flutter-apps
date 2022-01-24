// ignore_for_file: avoid_print, prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import '../utils.dart';
import 'game-setup-screen.dart';
import 'games-history-screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              color: Colors.red.shade900,
              child: const Text(''),
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.fromLTRB(20, 40, 20, 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      ElevatedButton(
                        child: const Text('Start a new game'),
                        onPressed: () {
                          Utils.goToScreen(context, GameSetupScreen());
                        },
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      ElevatedButton(
                        child: const Text('View games history'),
                        onPressed: () {
                          Utils.goToScreen(context, GamesHistoryScreen());
                        },
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
      ),
    );
  }
}
