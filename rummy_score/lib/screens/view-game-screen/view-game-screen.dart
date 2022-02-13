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
    return Consumer<GamesData>(
      builder: (context, gamesData, child) {
        return Scaffold(
          backgroundColor: const Color(0xFFFBFBFB),
          appBar: AppBar(
            title: Text(gamesData.currentGame!.name),
            actions: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.edit),
              ),
            ],
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              const SizedBox(
                height: 30.0,
              ),
              const Text('Round #1'),
              ContentBox(
                child: ButtonPrimaryDefault(
                  text: 'Submit a new score',
                  onPressed: () {
                    Utils.goToScreen(context, Routes.submitScoreScreen);
                  },
                ),
              ),
              const SizedBox(
                height: 30.0,
              ),
              const Text('Score card'),
              const Expanded(
                child: ContentBox(
                  child: Text('Score card goes here'),
                ),
              ),
              const SizedBox(
                height: 30.0,
              ),
            ],
          ),
        );
      },
    );
  }
}
