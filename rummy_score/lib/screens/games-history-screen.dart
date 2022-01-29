import 'package:flutter/material.dart';
import 'package:rummy_score/services/utils.dart';
import 'package:rummy_score/routes.dart';
import 'package:rummy_score/widgets/button-primary-default.dart';
import 'package:rummy_score/widgets/content-box.dart';

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
            child: ButtonPrimaryDefault(
              text: 'View Game',
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
