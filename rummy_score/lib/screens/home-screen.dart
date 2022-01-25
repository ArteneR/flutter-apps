import 'package:flutter/material.dart';
import '../utils.dart';
import '../routes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

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
              padding: const EdgeInsets.fromLTRB(20, 40, 20, 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      ElevatedButton(
                        child: const Text('Start a new game'),
                        onPressed: () {
                          Utils.goToScreen(context, Routes.gameSetupScreen);
                        },
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      ElevatedButton(
                        child: const Text('View games history'),
                        onPressed: () {
                          Utils.goToScreen(context, Routes.gamesHistoryScreen);
                        },
                      ),
                    ],
                  ),
                  Column(
                    children: const <Widget>[
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
