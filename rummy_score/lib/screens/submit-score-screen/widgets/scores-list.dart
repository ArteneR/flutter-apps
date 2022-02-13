import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rummy_score/data/games-data.dart';
import 'package:rummy_score/screens/submit-score-screen/widgets/score-input.dart';

class ScoresList extends StatelessWidget {
  const ScoresList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<GamesData>(
      builder: (context, gamesData, child) {
        return ListView.builder(
          shrinkWrap: true,
          itemBuilder: (context, index) {
            final player = gamesData.currentGame!.players[index];

            return ScoreInput(
              playerName: player.name,
              onChangeCallback: () {
                // TODO
              },
            );
          },
          itemCount: gamesData.currentGame!.players.length,
        );
      },
    );
  }
}
