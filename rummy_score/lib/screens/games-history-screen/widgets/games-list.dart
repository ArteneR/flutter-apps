import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rummy_score/data/games-data.dart';
import 'package:rummy_score/routes/routes.dart';
import 'package:rummy_score/screens/games-history-screen/widgets/game-tile.dart';
import 'package:rummy_score/services/utils.dart';

class GamesList extends StatelessWidget {
  const GamesList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<GamesData>(
      builder: (context, gamesData, child) {
        return ListView.builder(
          shrinkWrap: true,
          itemBuilder: (context, index) {
            final game = gamesData.games[index];

            return GameTile(
              gameName: game.name,
              selectCallback: () {
                gamesData.currentGame = game;
                Utils.goToScreen(context, Routes.viewGameScreen);
              },
            );
          },
          itemCount: gamesData.games.length,
        );
      },
    );
  }
}
