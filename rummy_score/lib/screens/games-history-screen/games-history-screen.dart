import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rummy_score/data/games-data.dart';
import 'package:rummy_score/screens/games-history-screen/widgets/games-list-empty.dart';
import 'package:rummy_score/screens/games-history-screen/widgets/games-list.dart';
import 'package:rummy_score/services/utils.dart';
import 'package:rummy_score/routes/routes.dart';
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
          Expanded(
            child: ContentBox(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const Text('# Game name'),
                  Consumer<GamesData>(builder: (context, gamesData, child) {
                    return Column(
                      children: [
                        Visibility(
                          visible: gamesData.games.isNotEmpty,
                          child: const GamesList(),
                        ),
                        Visibility(
                          visible: gamesData.games.isEmpty,
                          child: const GamesListEmpty(),
                        ),
                      ],
                    );
                  }),
                ],
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(20.0),
            child: ButtonPrimaryDefault(
              text: 'Start a new game',
              onPressed: () {
                Provider.of<GamesData>(context, listen: false)
                    .addGame(name: 'New Game');
                Utils.goToScreen(context, Routes.gameSetupScreen);
              },
            ),
          ),
        ],
      ),
    );
  }
}
