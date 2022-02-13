import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rummy_score/models/game.dart';
import 'package:rummy_score/routes/route-arguments.dart';
import 'package:rummy_score/data/games-data.dart';
import 'package:rummy_score/services/utils.dart';
import 'package:rummy_score/routes/routes.dart';
import 'package:rummy_score/widgets/button-primary-default.dart';
import 'package:rummy_score/widgets/content-box.dart';

class ViewGameScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFBFBFB),
      appBar: AppBar(
        title: Text('Game name'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          const SizedBox(
            height: 30.0,
          ),
          Expanded(
            child: ContentBox(
              child: Column(
                children: <Widget>[
                  const Text('View Game Screen'),
                  // Text('TEST data: ' +
                  //     Provider.of<Data>(context).data['test'].toString()),
                ],
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(20.0),
            child: ButtonPrimaryDefault(
              text: 'Submit Score',
              onPressed: () {
                Utils.goToScreen(context, Routes.submitScoreScreen);
              },
            ),
          ),
        ],
      ),
    );
  }
}
